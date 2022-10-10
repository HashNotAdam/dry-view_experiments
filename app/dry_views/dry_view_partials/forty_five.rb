# frozen_string_literal: true

module DryViewPartials
  class FortyFive < Dry::View
    config.paths = [File.join(__dir__)]
    config.template = "forty_five"
  end
end
