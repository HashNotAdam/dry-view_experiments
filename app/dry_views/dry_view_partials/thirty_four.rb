# frozen_string_literal: true

module DryViewPartials
  class ThirtyFour < Dry::View
    config.paths = [File.join(__dir__)]
    config.template = "thirty_four"
  end
end
