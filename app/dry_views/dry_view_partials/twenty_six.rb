# frozen_string_literal: true

module DryViewPartials
  class TwentySix < Dry::View
    config.paths = [File.join(__dir__)]
    config.template = "twenty_six"
  end
end
