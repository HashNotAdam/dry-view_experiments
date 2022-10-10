# frozen_string_literal: true

module DryViewPartials
  class Twenty < Dry::View
    config.paths = [File.join(__dir__)]
    config.template = "twenty"
  end
end
