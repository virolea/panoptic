# frozen_string_literal: true

module Panoptic
  class FailedJob < SolidQueue::Job
    # TODO: use the `failed` scope available in SolidQueue next release
    default_scope { joins(:failed_execution) }

    def exception_class
      failed_execution.error["exception_class"]
    end

    def enqueued_at
      Time.parse(arguments["enqueued_at"])
    end
  end
end
