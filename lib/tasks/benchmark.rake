# frozen_string_literal: true

BASELINE_STATISTICS = {
  label: "Baseline",
  microseconds: 0.0,
  iterations: 0,
  stats: Benchmark::IPS::Stats::SD.new([0]),
  measurement_cycle: 0
}.freeze

BENCHMARK_SECONDS = 10
WARMUP_SECONDS = 1

desc "Benchmark changes to Dry::View"
task benchmark: :environment do
  ensure_baseline_has_been_set
  puts "Benchmarking experiment..."
  perform_benchmark => { job:, baseline:, experiment:, view_class: }
  log_output(view_class)
  log_results(job, baseline, experiment)
end

namespace :benchmark do
  task baseline: :environment do
    puts "Benchmarking baseline..."
    experiment = perform_benchmark.fetch(:experiment)
    log_statistics(experiment)
  end
end

def perform_benchmark
  baseline = Benchmark::IPS::Report::Entry.new(*BASELINE_STATISTICS.values)
  view_class = DryViewPage
  job, experiment = suppress_stdout { run_benchmark(view_class) }
  { job:, baseline:, experiment:, view_class: }
end

def ensure_baseline_has_been_set
  return unless BASELINE_STATISTICS.fetch(:measurement_cycle).zero?

  puts <<~MESSAGE

    Set the baseline statistics by running the benchmark:baseline task WITHOUT code
    changes and paste the resulting output at the top of the file

  MESSAGE

  exit(1)
end

def suppress_stdout(&block)
  original_stdout = $stdout.clone
  $stdout.reopen(File.new(File::NULL, 'w'))
  yield
ensure
  $stdout.reopen(original_stdout)
end

def run_benchmark(view_class)
  job = nil
  report = Benchmark.ips do |x|
    job = x
    x.time = BENCHMARK_SECONDS
    x.warmup = WARMUP_SECONDS
    x.report { view_class.new.call.to_s }
  end
  result = report.instance_variable_get(:@entries).first
  [job, result]
end

def log_output(view_class)
  puts <<~STR

    Output:
    -------
    #{view_class.new.call}
    -------
  STR
end

def log_results(job, baseline, experiment)
  puts "\nBenchmark result:"
  stdout = job.instance_variable_get(:@stdout)
  stdout.running("Baseline", 1)
  stdout.add_report(baseline, "")
  stdout.running("Experiment", 1)
  stdout.add_report(experiment, "")
  puts "\n"
end

def log_statistics(benchmark_entry)
  microseconds = benchmark_entry.instance_variable_get(:@microseconds)
  iterations = benchmark_entry.instance_variable_get(:@iterations)
  stats = benchmark_entry.instance_variable_get(:@stats)
  mean = stats.instance_variable_get(:@mean)
  measurement_cycle = benchmark_entry.instance_variable_get(:@measurement_cycle)

  puts <<~STATS

    BASELINE_STATISTICS = {
      label: "Baseline",
      microseconds: #{microseconds},
      iterations: #{iterations},
      stats: Benchmark::IPS::Stats::SD.new([#{mean}]),
      measurement_cycle: #{measurement_cycle}
    }.freeze
  STATS
end
