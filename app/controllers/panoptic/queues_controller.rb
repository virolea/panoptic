# frozen_string_literal: true

module Panoptic
  class QueuesController < ApplicationController
    def index
      @queues = SolidQueue::Queue.all
    end
  end
end
