Rails.application.routes.draw do

    namespace :api do
        namespace :base do
            resources :authors,  only: [:index, :show, :create, :update, :destroy]
            resources :posts,    only: [:index, :show, :create, :update, :destroy]
            resources :comments, only: [:index, :show, :create, :update, :destroy]
        end
    end


    namespace :api do
        namespace :jb do
            resources :authors, only: [:index, :show, :create, :update, :destroy], defaults: { format: :json } do
                member do
                    get 'relationships/posts', action: 'show_relationship', relationship: 'posts'
                    get 'posts', action: 'show_related_records', relationship: 'posts'
                end
            end

            resources :posts, only: [:index, :show, :create, :update, :destroy], defaults: { format: :json } do
                member do
                    get 'relationships/author', action: 'show_relationship', relationship: 'author'
                    get 'author', action: 'show_related_records', relationship: 'author'

                    get 'relationships/comments', action: 'show_relationship', relationship: 'comments'
                    get 'comments', action: 'show_related_records', relationship: 'comments'
                end
            end

            resources :comments, only: [:index, :show, :create, :update, :destroy], defaults: { format: :json } do
                member do
                    get 'relationships/post', action: 'show_relationship', relationship: 'post'
                    get 'post', action: 'show_related_records', relationship: 'post'
                end
            end
        end
    end

end
