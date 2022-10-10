# frozen_string_literal: true

module DryViewPartials
  class SeventySix < Dry::View
    config.paths = [File.join(__dir__)]
    config.template = "seventy_six"
  end
end
