# frozen_string_literal: true

module Panoptic
  class Jobs::RetriesController < ApplicationController
    def create
      @job = SolidQueue::Job.find(params[:job_id])

      @job.retry
      redirect_to jobs_path, notice: "Successfully retried Job ##{@job.id}"
    end
  end
end
