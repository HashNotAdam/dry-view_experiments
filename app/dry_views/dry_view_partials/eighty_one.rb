# frozen_string_literal: true

module DryViewPartials
  class EightyOne < Dry::View
    config.paths = [File.join(__dir__)]
    config.template = "eighty_one"
  end
end
