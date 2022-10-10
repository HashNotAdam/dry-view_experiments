# frozen_string_literal: true

module DryViewPartials
  class FortySix < Dry::View
    config.paths = [File.join(__dir__)]
    config.template = "forty_six"
  end
end
