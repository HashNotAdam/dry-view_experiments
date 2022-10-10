# frozen_string_literal: true

module DryViewPartials
  class TwentyEight < Dry::View
    config.paths = [File.join(__dir__)]
    config.template = "twenty_eight"
  end
end
