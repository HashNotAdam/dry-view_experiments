# frozen_string_literal: true

module DryViewPartials
  class Five < Dry::View
    config.paths = [File.join(__dir__)]
    config.template = "five"
  end
end
