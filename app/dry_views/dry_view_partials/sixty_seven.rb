# frozen_string_literal: true

module DryViewPartials
  class SixtySeven < Dry::View
    config.paths = [File.join(__dir__)]
    config.template = "sixty_seven"
  end
end
