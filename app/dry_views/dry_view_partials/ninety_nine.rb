# frozen_string_literal: true

module DryViewPartials
  class NinetyNine < Dry::View
    config.paths = [File.join(__dir__)]
    config.template = "ninety_nine"
  end
end
