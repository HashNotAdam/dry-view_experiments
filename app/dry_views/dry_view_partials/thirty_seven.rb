# frozen_string_literal: true

module DryViewPartials
  class ThirtySeven < Dry::View
    config.paths = [File.join(__dir__)]
    config.template = "thirty_seven"
  end
end
