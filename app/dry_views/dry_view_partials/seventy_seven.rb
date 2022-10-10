# frozen_string_literal: true

module DryViewPartials
  class SeventySeven < Dry::View
    config.paths = [File.join(__dir__)]
    config.template = "seventy_seven"
  end
end
