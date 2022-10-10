# frozen_string_literal: true

module DryViewPartials
  class Nineteen < Dry::View
    config.paths = [File.join(__dir__)]
    config.template = "nineteen"
  end
end
