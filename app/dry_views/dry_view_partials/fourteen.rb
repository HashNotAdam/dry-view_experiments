# frozen_string_literal: true

module DryViewPartials
  class Fourteen < Dry::View
    config.paths = [File.join(__dir__)]
    config.template = "fourteen"
  end
end
