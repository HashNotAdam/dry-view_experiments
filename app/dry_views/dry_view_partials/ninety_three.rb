# frozen_string_literal: true

module DryViewPartials
  class NinetyThree < Dry::View
    config.paths = [File.join(__dir__)]
    config.template = "ninety_three"
  end
end
