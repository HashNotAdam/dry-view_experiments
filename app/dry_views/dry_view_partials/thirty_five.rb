# frozen_string_literal: true

module DryViewPartials
  class ThirtyFive < Dry::View
    config.paths = [File.join(__dir__)]
    config.template = "thirty_five"
  end
end
