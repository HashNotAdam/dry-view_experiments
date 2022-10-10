# frozen_string_literal: true

module DryViewPartials
  class Three < Dry::View
    config.paths = [File.join(__dir__)]
    config.template = "three"
  end
end
