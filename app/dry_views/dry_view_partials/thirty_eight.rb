# frozen_string_literal: true

module DryViewPartials
  class ThirtyEight < Dry::View
    config.paths = [File.join(__dir__)]
    config.template = "thirty_eight"
  end
end
