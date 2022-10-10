# frozen_string_literal: true

class DryViewPage < Dry::View
  config.paths = [File.join(__dir__)].freeze
  config.template = "dry_view_page"
end
