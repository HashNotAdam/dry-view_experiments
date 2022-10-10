# frozen_string_literal: true

module DryViewPartials
  class FiftyEight < Dry::View
    config.paths = [File.join(__dir__)]
    config.template = "fifty_eight"
  end
end
