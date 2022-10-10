# frozen_string_literal: true

module DryViewPartials
  class OneHundred < Dry::View
    config.paths = [File.join(__dir__)]
    config.template = "one_hundred"
  end
end
