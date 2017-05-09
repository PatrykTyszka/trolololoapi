Rails.application.routes.draw do
  namespace :api, defaults: {format: :json} do
    namespace :v1 do
      mount Knock::Engine => '/auth'
      resources :boards, only: [:index, :create, :destroy]
    end
  end
end
