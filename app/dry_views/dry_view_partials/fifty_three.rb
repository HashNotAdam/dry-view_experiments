# frozen_string_literal: true

module DryViewPartials
  class FiftyThree < Dry::View
    config.paths = [File.join(__dir__)]
    config.template = "fifty_three"
  end
end
