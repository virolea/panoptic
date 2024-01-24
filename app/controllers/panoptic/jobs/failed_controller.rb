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

    def destroy
      @job = Panoptic::FailedJob.find(params[:id])
      if @job.destroy
        redirect_back fallback_location: failed_jobs_path,
                      notice: "Job was successfully deleted."
      else
        redirect_back fallback_location: failed_jobs_path,
                      alert: @job.errors.full_messages.to_sentence
      end
    end
  end
end
