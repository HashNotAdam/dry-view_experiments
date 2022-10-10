# frozen_string_literal: true

module DryViewPartials
  class TwentyTwo < Dry::View
    config.paths = [File.join(__dir__)]
    config.template = "twenty_two"
  end
end
