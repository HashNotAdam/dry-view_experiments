# frozen_string_literal: true

module DryViewPartials
  class SeventyFive < Dry::View
    config.paths = [File.join(__dir__)]
    config.template = "seventy_five"
  end
end
