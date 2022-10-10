# frozen_string_literal: true

module DryViewPartials
  class FiftyFive < Dry::View
    config.paths = [File.join(__dir__)]
    config.template = "fifty_five"
  end
end
