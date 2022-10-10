# frozen_string_literal: true

module DryViewPartials
  class NinetyFour < Dry::View
    config.paths = [File.join(__dir__)]
    config.template = "ninety_four"
  end
end
