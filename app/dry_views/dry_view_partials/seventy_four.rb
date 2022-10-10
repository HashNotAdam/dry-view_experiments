# frozen_string_literal: true

module DryViewPartials
  class SeventyFour < Dry::View
    config.paths = [File.join(__dir__)]
    config.template = "seventy_four"
  end
end
