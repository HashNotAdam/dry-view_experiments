# frozen_string_literal: true

module DryViewPartials
  class FortyEight < Dry::View
    config.paths = [File.join(__dir__)]
    config.template = "forty_eight"
  end
end
