Panoptic::Engine.routes.draw do
  root to: "processes#index"

  resources :queues, only: [:index]

  scope "jobs" do
    get "all", to: "jobs#index", as: "jobs"

    scope module: "jobs" do
      resources :scheduled, only: :index, as: :scheduled_jobs
      resources :failed, only: :index, as: :failed_jobs
    end
  end
end
