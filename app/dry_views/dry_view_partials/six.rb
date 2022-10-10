# frozen_string_literal: true

module DryViewPartials
  class Six < Dry::View
    config.paths = [File.join(__dir__)]
    config.template = "six"
  end
end
