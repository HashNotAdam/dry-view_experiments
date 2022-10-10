# frozen_string_literal: true

module DryViewPartials
  class FortyTwo < Dry::View
    config.paths = [File.join(__dir__)]
    config.template = "forty_two"
  end
end
