# frozen_string_literal: true

module DryViewPartials
  class SixtyOne < Dry::View
    config.paths = [File.join(__dir__)]
    config.template = "sixty_one"
  end
end
