# frozen_string_literal: true

module DryViewPartials
  class NinetySix < Dry::View
    config.paths = [File.join(__dir__)]
    config.template = "ninety_six"
  end
end
