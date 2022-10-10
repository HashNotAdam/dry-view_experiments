# frozen_string_literal: true

module DryViewPartials
  class Eleven < Dry::View
    config.paths = [File.join(__dir__)]
    config.template = "eleven"
  end
end
