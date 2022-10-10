# frozen_string_literal: true

module DryViewPartials
  class One < Dry::View
    config.paths = [File.join(__dir__)]
    config.template = "one"

    expose :random_numbers
  end
end
