# frozen_string_literal: true

module DryViewPartials
  class FortyOne < Dry::View
    config.paths = [File.join(__dir__)]
    config.template = "forty_one"
  end
end
