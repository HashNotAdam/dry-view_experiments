# frozen_string_literal: true

module DryViewPartials
  class SixtyEight < Dry::View
    config.paths = [File.join(__dir__)]
    config.template = "sixty_eight"
  end
end
