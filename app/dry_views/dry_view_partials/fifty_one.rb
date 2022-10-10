# frozen_string_literal: true

module DryViewPartials
  class FiftyOne < Dry::View
    config.paths = [File.join(__dir__)]
    config.template = "fifty_one"
  end
end
