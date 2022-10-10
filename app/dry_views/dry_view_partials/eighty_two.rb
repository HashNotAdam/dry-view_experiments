# frozen_string_literal: true

module DryViewPartials
  class EightyTwo < Dry::View
    config.paths = [File.join(__dir__)]
    config.template = "eighty_two"
  end
end
