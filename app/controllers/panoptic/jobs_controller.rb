# frozen_string_literal: true

module Panoptic
  class JobsController < ApplicationController
    def index
      @jobs = SolidQueue::Job.order(created_at: :asc).page(params[:page])
    end
  end
end
