# frozen_string_literal: true

module Panoptic
  class JobsController < ApplicationController
    include Pagy::Backend

    def index
      @pagy, @jobs = pagy(SolidQueue::Job.order(created_at: :asc))
    end
  end
end
