# frozen_string_literal: true

module DryViewPartials
  class FortyNine < Dry::View
    config.paths = [File.join(__dir__)]
    config.template = "forty_nine"
  end
end
