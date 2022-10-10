# frozen_string_literal: true

module DryViewPartials
  class Seven < Dry::View
    config.paths = [File.join(__dir__)]
    config.template = "seven"
  end
end
