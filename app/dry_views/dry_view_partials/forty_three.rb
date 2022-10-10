# frozen_string_literal: true

module DryViewPartials
  class FortyThree < Dry::View
    config.paths = [File.join(__dir__)]
    config.template = "forty_three"
  end
end
