# frozen_string_literal: true

module DryViewPartials
  class Forty < Dry::View
    config.paths = [File.join(__dir__)]
    config.template = "forty"
  end
end
