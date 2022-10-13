# Dry::View Experiments

A minimal version of Rails pointing to a local version of Dry::View.

benchmark-ips is used to compare your experiment to a baseline recorded using
a pristine version of the Dry::View gem.

The view is a terribly contrived set of 100 partials designed to vaguely
represent a site built from ERB components.

## Getting started

Replace `PATH_TO_DRY_VIEW` in the Gemfile with the path to your local copy of
Dry::View.

## Benchmarking

Before conducting an experiment, you will need to set the baseline statistics
by running:
* `bin/rails benchmark:baseline`

Then place the resulting output at the top of `lib/benchmark.rake`.

Once you have a baseline, you can run the rake task:
* `bin/rails benchmark`

## Profiling

To help find optimisation opportunities, there is a profiling rake task that
both prints to stdout and also writes an HTML file to `tmp/graph_html.html`:
* `bin/rails profile`
