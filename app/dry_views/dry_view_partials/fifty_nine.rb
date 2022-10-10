# frozen_string_literal: true

module DryViewPartials
  class FiftyNine < Dry::View
    config.paths = [File.join(__dir__)]
    config.template = "fifty_nine"
  end
end
