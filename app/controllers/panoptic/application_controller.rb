module Panoptic
  class ApplicationController < ActionController::Base
    include Pagy::Backend
  end
end
