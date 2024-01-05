Panoptic::Engine.routes.draw do
  root to: "processes#index"

  resources :queues, only: [:index]

  resources :jobs, only: :index do
    resource :retry, only: :create, module: :jobs
  end

  scope :jobs, module: :jobs do
    resources :scheduled, only: :index, as: :scheduled_jobs
    resources :failed, only: [:index, :show], as: :failed_jobs
  end
end
