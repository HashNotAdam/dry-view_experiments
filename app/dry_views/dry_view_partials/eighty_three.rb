# frozen_string_literal: true

module DryViewPartials
  class EightyThree < Dry::View
    config.paths = [File.join(__dir__)]
    config.template = "eighty_three"
  end
end
