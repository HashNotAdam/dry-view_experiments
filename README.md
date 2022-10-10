# Dry::View Experiments

A minimal version of Rails pointing to a local version of Dry::View.

benchmark-ips is used to compare your experiment to a baseline recorded using
a pristine version of the Dry::View gem.

The view is a terribly contrived set of 100 partials designed to vaguely
represent a site built from ERB components.

## Getting started

Replace PATH_TO_DRY_VIEW in the Gemfile with the path to your local copy of
Dry::View.

lib/benchmark.rake includes baseline setting but it is almost certain that the
baseline will differ across devices. Run the benchmark with
`bin/rails benchmark` and then replace the values of `baseline_statistics` with
your results.
