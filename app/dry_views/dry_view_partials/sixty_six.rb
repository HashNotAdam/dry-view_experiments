# frozen_string_literal: true

module DryViewPartials
  class SixtySix < Dry::View
    config.paths = [File.join(__dir__)]
    config.template = "sixty_six"
  end
end
