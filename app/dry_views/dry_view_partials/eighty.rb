# frozen_string_literal: true

module DryViewPartials
  class Eighty < Dry::View
    config.paths = [File.join(__dir__)]
    config.template = "eighty"
  end
end
