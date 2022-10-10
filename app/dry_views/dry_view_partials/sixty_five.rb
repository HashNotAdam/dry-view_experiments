# frozen_string_literal: true

module DryViewPartials
  class SixtyFive < Dry::View
    config.paths = [File.join(__dir__)]
    config.template = "sixty_five"
  end
end
