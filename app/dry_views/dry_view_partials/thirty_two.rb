# frozen_string_literal: true

module DryViewPartials
  class ThirtyTwo < Dry::View
    config.paths = [File.join(__dir__)]
    config.template = "thirty_two"
  end
end
