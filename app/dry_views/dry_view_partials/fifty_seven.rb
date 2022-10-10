# frozen_string_literal: true

module DryViewPartials
  class FiftySeven < Dry::View
    config.paths = [File.join(__dir__)]
    config.template = "fifty_seven"
  end
end
