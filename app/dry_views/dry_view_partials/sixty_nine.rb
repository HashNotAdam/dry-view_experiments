# frozen_string_literal: true

module DryViewPartials
  class SixtyNine < Dry::View
    config.paths = [File.join(__dir__)]
    config.template = "sixty_nine"
  end
end
