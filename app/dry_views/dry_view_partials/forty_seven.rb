# frozen_string_literal: true

module DryViewPartials
  class FortySeven < Dry::View
    config.paths = [File.join(__dir__)]
    config.template = "forty_seven"
  end
end
