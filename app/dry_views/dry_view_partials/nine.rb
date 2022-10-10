# frozen_string_literal: true

module DryViewPartials
  class Nine < Dry::View
    config.paths = [File.join(__dir__)]
    config.template = "nine"
  end
end
