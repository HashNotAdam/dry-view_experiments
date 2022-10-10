# frozen_string_literal: true

module DryViewPartials
  class Sixteen < Dry::View
    config.paths = [File.join(__dir__)]
    config.template = "sixteen"
  end
end
