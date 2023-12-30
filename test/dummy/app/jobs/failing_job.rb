class FailingJob < ApplicationJob
  retry_on ZeroDivisionError

  def perform
    1 / 0
  end
end
