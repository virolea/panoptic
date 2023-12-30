# frozen_string_literal: true

module Panoptic
  class Jobs::FailedController < ApplicationController
    layout "panoptic/jobs", only: :index

    def index
      @pagy, @jobs = pagy(
        Panoptic::FailedJob.order(created_at: :asc)
      )
    end

    def show
      @job = Panoptic::FailedJob.find(params[:id])
    end
  end
end
