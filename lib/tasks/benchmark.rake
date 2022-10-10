# frozen_string_literal: true

# Update this before a new experiment
baseline_statistics = {
  label: "Before",
  microseconds: 10076792.0,
  iterations: 1008,
  stats: Benchmark::IPS::Stats::SD.new(
    [100.26263548551744] # Just the mean is fine
  ),
  measurement_cycle: 9
}

BENCHMARK_SECONDS = 10
WARMUP_SECONDS = 1

desc "Benchmark changes to Dry::View"
task benchmark: :environment do
  puts "Benchmarking experiment..."
  baseline = Benchmark::IPS::Report::Entry.new(*baseline_statistics.values)
  view_class = DryViewPage
  job, experiment = suppress_stdout { run_benchmark(view_class) }
  log_output(view_class)
  log_results(job, baseline, experiment)
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
