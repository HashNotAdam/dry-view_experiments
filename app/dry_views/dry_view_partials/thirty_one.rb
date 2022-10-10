# frozen_string_literal: true

module DryViewPartials
  class ThirtyOne < Dry::View
    config.paths = [File.join(__dir__)]
    config.template = "thirty_one"
  end
end
