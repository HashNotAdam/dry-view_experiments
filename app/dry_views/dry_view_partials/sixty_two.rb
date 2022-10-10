# frozen_string_literal: true

module DryViewPartials
  class SixtyTwo < Dry::View
    config.paths = [File.join(__dir__)]
    config.template = "sixty_two"
  end
end
