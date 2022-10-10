# frozen_string_literal: true

module DryViewPartials
  class EightyEight < Dry::View
    config.paths = [File.join(__dir__)]
    config.template = "eighty_eight"
  end
end
