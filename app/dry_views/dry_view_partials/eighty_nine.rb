# frozen_string_literal: true

module DryViewPartials
  class EightyNine < Dry::View
    config.paths = [File.join(__dir__)]
    config.template = "eighty_nine"
  end
end
