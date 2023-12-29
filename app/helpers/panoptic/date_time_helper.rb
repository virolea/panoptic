# frozen_string_literal: true

module Panoptic
  module DateTimeHelper
    def safe_time_tag(date_or_time, *args, &block)
      return "-" unless date_or_time

      time_tag(date_or_time, *args, &block)
    end
  end
end
