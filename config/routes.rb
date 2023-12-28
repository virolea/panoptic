Panoptic::Engine.routes.draw do
  root to: "processes#index"

  resources :queues, only: [:index]
end
