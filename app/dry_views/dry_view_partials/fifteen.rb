# frozen_string_literal: true

module DryViewPartials
  class Fifteen < Dry::View
    config.paths = [File.join(__dir__)]
    config.template = "fifteen"
  end
end
