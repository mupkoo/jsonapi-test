Rails.application.routes.draw do

    namespace :api do
        namespace :base do
            resources :authors,  only: [:index, :show, :create, :update, :destroy]
            resources :posts,    only: [:index, :show, :create, :update, :destroy]
            resources :comments, only: [:index, :show, :create, :update, :destroy]
        end
    end

end
