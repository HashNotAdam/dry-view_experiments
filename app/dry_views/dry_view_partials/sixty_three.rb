# frozen_string_literal: true

module DryViewPartials
  class SixtyThree < Dry::View
    config.paths = [File.join(__dir__)]
    config.template = "sixty_three"
  end
end
