# frozen_string_literal: true

module DryViewPartials
  class FortyFour < Dry::View
    config.paths = [File.join(__dir__)]
    config.template = "forty_four"
  end
end
