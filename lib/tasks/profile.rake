# frozen_string_literal: true

desc "Profile a render of Dry::View"
task profile: :environment do
  view_class = DryViewPage
  warmup(view_class)
  profile { Array.new(100) { render(view_class) } }
end

def warmup(view_class)
  render(view_class)
end

def render(view_class)
  view_class.new.call.to_s
end

def profile(&block)
  result = RubyProf.profile(&block)

  log_result(result)
  write_graph_html(result)
end

def log_result(result)
  printer = RubyProf::FlatPrinter.new(result)
  printer.print($stdout)
end

def write_graph_html(result)
  printer = RubyProf::GraphHtmlPrinter.new(result)
  printer.print(
    File.open(
      Rails.root.join("tmp/graph_html.html"), "w"
    )
  )
end
