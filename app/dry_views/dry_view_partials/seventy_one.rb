# frozen_string_literal: true

module DryViewPartials
  class SeventyOne < Dry::View
    config.paths = [File.join(__dir__)]
    config.template = "seventy_one"
  end
end
