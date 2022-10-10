# frozen_string_literal: true

module DryViewPartials
  class Thirteen < Dry::View
    config.paths = [File.join(__dir__)]
    config.template = "thirteen"
  end
end
