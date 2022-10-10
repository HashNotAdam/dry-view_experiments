# frozen_string_literal: true

module DryViewPartials
  class EightySix < Dry::View
    config.paths = [File.join(__dir__)]
    config.template = "eighty_six"
  end
end
