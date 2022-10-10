# frozen_string_literal: true

module DryViewPartials
  class Eight < Dry::View
    config.paths = [File.join(__dir__)]
    config.template = "eight"
  end
end
