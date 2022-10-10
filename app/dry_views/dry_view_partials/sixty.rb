# frozen_string_literal: true

module DryViewPartials
  class Sixty < Dry::View
    config.paths = [File.join(__dir__)]
    config.template = "sixty"
  end
end
