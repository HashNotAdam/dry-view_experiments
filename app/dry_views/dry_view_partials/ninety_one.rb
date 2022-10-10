# frozen_string_literal: true

module DryViewPartials
  class NinetyOne < Dry::View
    config.paths = [File.join(__dir__)]
    config.template = "ninety_one"
  end
end
