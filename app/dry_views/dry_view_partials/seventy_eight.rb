# frozen_string_literal: true

module DryViewPartials
  class SeventyEight < Dry::View
    config.paths = [File.join(__dir__)]
    config.template = "seventy_eight"
  end
end
