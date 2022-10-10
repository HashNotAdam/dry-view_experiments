# frozen_string_literal: true

module DryViewPartials
  class NinetyTwo < Dry::View
    config.paths = [File.join(__dir__)]
    config.template = "ninety_two"
  end
end
