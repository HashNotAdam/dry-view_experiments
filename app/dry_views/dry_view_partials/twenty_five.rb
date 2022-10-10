# frozen_string_literal: true

module DryViewPartials
  class TwentyFive < Dry::View
    config.paths = [File.join(__dir__)]
    config.template = "twenty_five"
  end
end
