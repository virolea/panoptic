# frozen_string_literal: true

module Panoptic
  class ProcessesController < ApplicationController
    def index
      @hosts = Process.supervisors.includes(:forks)
    end
  end
end
