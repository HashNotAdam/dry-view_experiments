# frozen_string_literal: true

module DryViewPartials
  class Thirty < Dry::View
    config.paths = [File.join(__dir__)]
    config.template = "thirty"
  end
end
