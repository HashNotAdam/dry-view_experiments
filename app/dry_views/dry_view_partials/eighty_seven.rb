# frozen_string_literal: true

module DryViewPartials
  class EightySeven < Dry::View
    config.paths = [File.join(__dir__)]
    config.template = "eighty_seven"
  end
end
