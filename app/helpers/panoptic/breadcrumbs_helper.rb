# frozen_string_literal: true

module Panoptic
  module BreadcrumbsHelper
    def breadcrumb_items
      @breadcrumb_items ||= []
    end

    def breadcrumbs
      tag.nav(aria: { label: "breadcrumb" }) do
        tag.ol(class: "breadcrumb") do
          breadcrumb_items.map do |item|
            concat tag.li(item, class: "breadcrumb-item")
          end
        end
      end
    end
  end
end
