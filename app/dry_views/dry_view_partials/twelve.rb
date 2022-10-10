# frozen_string_literal: true

module DryViewPartials
  class Twelve < Dry::View
    config.paths = [File.join(__dir__)]
    config.template = "twelve"
  end
end
