# frozen_string_literal: true

module DryViewPartials
  class TwentyOne < Dry::View
    config.paths = [File.join(__dir__)]
    config.template = "twenty_one"
  end
end
