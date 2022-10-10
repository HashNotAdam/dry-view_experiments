# frozen_string_literal: true

module DryViewPartials
  class ThirtyNine < Dry::View
    config.paths = [File.join(__dir__)]
    config.template = "thirty_nine"
  end
end
