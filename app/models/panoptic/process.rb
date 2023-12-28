# frozen_string_literal: true

module Panoptic
  class Process
    def self.supervisors
      SolidQueue::Process.where(supervisor_id: nil)
    end
  end
end
