# frozen_string_literal: true

module DryViewPartials
  class FiftySix < Dry::View
    config.paths = [File.join(__dir__)]
    config.template = "fifty_six"
  end
end
