# frozen_string_literal: true

module DryViewPartials
  class NinetyEight < Dry::View
    config.paths = [File.join(__dir__)]
    config.template = "ninety_eight"
  end
end
