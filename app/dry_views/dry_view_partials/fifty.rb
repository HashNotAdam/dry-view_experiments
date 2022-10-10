# frozen_string_literal: true

module DryViewPartials
  class Fifty < Dry::View
    config.paths = [File.join(__dir__)]
    config.template = "fifty"
  end
end
