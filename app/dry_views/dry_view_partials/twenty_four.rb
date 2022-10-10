# frozen_string_literal: true

module DryViewPartials
  class TwentyFour < Dry::View
    config.paths = [File.join(__dir__)]
    config.template = "twenty_four"
  end
end
