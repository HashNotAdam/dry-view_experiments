# frozen_string_literal: true

module DryViewPartials
  class TwentyThree < Dry::View
    config.paths = [File.join(__dir__)]
    config.template = "twenty_three"
  end
end
