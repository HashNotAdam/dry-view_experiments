# frozen_string_literal: true

module DryViewPartials
  class Four < Dry::View
    config.paths = [File.join(__dir__)]
    config.template = "four"
  end
end
