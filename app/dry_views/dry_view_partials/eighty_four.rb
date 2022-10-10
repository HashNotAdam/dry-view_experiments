# frozen_string_literal: true

module DryViewPartials
  class EightyFour < Dry::View
    config.paths = [File.join(__dir__)]
    config.template = "eighty_four"
  end
end
