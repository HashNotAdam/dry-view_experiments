# frozen_string_literal: true

module DryViewPartials
  class NinetyFive < Dry::View
    config.paths = [File.join(__dir__)]
    config.template = "ninety_five"
  end
end
