# frozen_string_literal: true

module DryViewPartials
  class ThirtyThree < Dry::View
    config.paths = [File.join(__dir__)]
    config.template = "thirty_three"
  end
end
