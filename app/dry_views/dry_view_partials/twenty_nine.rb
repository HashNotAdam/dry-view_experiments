# frozen_string_literal: true

module DryViewPartials
  class TwentyNine < Dry::View
    config.paths = [File.join(__dir__)]
    config.template = "twenty_nine"
  end
end
