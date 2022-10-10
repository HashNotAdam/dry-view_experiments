# frozen_string_literal: true

module DryViewPartials
  class ThirtySix < Dry::View
    config.paths = [File.join(__dir__)]
    config.template = "thirty_six"
  end
end
