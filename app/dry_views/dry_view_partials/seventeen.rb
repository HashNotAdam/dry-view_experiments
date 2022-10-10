# frozen_string_literal: true

module DryViewPartials
  class Seventeen < Dry::View
    config.paths = [File.join(__dir__)]
    config.template = "seventeen"
  end
end
