# frozen_string_literal: true

module DryViewPartials
  class SeventyThree < Dry::View
    config.paths = [File.join(__dir__)]
    config.template = "seventy_three"
  end
end
