# frozen_string_literal: true

module DryViewPartials
  class Seventy < Dry::View
    config.paths = [File.join(__dir__)]
    config.template = "seventy"
  end
end
