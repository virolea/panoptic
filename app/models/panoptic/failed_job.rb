# frozen_string_literal: true

module Panoptic
  class FailedJob < SolidQueue::Job
    # TODO: use the `failed` scope available in SolidQueue next release
    default_scope { includes(:failed_execution).where.not(failed_execution: { id: nil }) }

    def enqueued_at
      Time.parse(arguments["enqueued_at"])
    end

    def exception_class
      failed_execution.error["exception_class"]
    end

    def exception_message
      failed_execution.error["message"]
    end

    def stacktrace
      failed_execution.error["backtrace"]
    end
  end
end
