# frozen_string_literal: true

module DryViewPartials
  class NinetySeven < Dry::View
    config.paths = [File.join(__dir__)]
    config.template = "ninety_seven"
  end
end
