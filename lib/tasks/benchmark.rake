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

desc "Benchmark changes to Dry::View"
task benchmark: :environment do
  baseline = Benchmark::IPS::Report::Entry.new(*baseline_statistics.values)
  job, experiment = suppress_stdout { run_benchmark }
  log_results_to_stdout(job, baseline, experiment)
end

def suppress_stdout(&block)
  original_stdout = $stdout.clone
  $stdout.reopen(File.new(File::NULL, 'w'))
  yield
ensure
  $stdout.reopen(original_stdout)
end

def run_benchmark
  controller_view = ApplicationController.new.view_context
  job = nil
  report = Benchmark.ips do |x|
    job = x
    x.time = 10
    x.warmup = 2
    x.report { controller_view.render(html: DryViewPage.new.call.to_s) }
  end
  result = report.instance_variable_get(:@entries).first
  [job, result]
end

def log_results_to_stdout(job, baseline, experiment)
  job.instance_variable_get(:@stdout).running "Baseline", 1
  job.instance_variable_get(:@stdout).add_report baseline, caller(1).first
  job.instance_variable_get(:@stdout).running "Experiment", 1
  job.instance_variable_get(:@stdout).add_report experiment, caller(1).first
end
