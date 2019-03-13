Rails.application.routes.draw do
  root to: "licenses#index"

  resources :licenses do
    # resources :build, controller: "licenses/build"
  end

end