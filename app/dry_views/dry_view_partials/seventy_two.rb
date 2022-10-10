# frozen_string_literal: true

module DryViewPartials
  class SeventyTwo < Dry::View
    config.paths = [File.join(__dir__)]
    config.template = "seventy_two"
  end
end
