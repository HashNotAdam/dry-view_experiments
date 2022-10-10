# frozen_string_literal: true

module DryViewPartials
  class Eighteen < Dry::View
    config.paths = [File.join(__dir__)]
    config.template = "eighteen"
  end
end
