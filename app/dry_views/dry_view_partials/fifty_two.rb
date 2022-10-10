# frozen_string_literal: true

module DryViewPartials
  class FiftyTwo < Dry::View
    config.paths = [File.join(__dir__)]
    config.template = "fifty_two"
  end
end
