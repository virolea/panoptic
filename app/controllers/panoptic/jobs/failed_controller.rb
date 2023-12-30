# frozen_string_literal: true

module Panoptic
  class Jobs::FailedController < ApplicationController
    def index
      # TODO: use the `failed` scope available in SolidQueue next release
      @pagy, @jobs = pagy(
        SolidQueue::Job.joins(:failed_execution).order(created_at: :asc)
      )

      render "panoptic/jobs/index"
    end
  end
end
