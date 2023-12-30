# frozen_string_literal: true

module Panoptic
  class Jobs::FailedController < ApplicationController
    layout "panoptic/jobs"

    def index
      @pagy, @jobs = pagy(
        Panoptic::FailedJob.order(created_at: :asc)
      )
    end
  end
end
