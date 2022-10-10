# frozen_string_literal: true

module DryViewPartials
  class Two < Dry::View
    config.paths = [File.join(__dir__)]
    config.template = "two"
  end
end
