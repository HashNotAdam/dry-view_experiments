# frozen_string_literal: true

module DryViewPartials
  class FiftyFour < Dry::View
    config.paths = [File.join(__dir__)]
    config.template = "fifty_four"
  end
end
