# frozen_string_literal: true

module DryViewPartials
  class TwentySeven < Dry::View
    config.paths = [File.join(__dir__)]
    config.template = "twenty_seven"
  end
end
