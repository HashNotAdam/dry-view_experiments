# frozen_string_literal: true

module DryViewPartials
  class SeventyNine < Dry::View
    config.paths = [File.join(__dir__)]
    config.template = "seventy_nine"
  end
end
