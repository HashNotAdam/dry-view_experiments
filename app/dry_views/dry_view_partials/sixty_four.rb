# frozen_string_literal: true

module DryViewPartials
  class SixtyFour < Dry::View
    config.paths = [File.join(__dir__)]
    config.template = "sixty_four"
  end
end
