# frozen_string_literal: true

module Panoptic
  class Jobs::ScheduledController < ApplicationController
    def index
      # TODO: use the `scheduled` scope available in SolidQueue next release
      @pagy, @jobs = pagy(
        SolidQueue::Job.joins(:scheduled_execution).order(created_at: :asc)
      )

      render "panoptic/jobs/index"
    end
  end
end
