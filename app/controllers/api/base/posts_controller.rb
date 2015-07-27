module Api::Base
    class PostsController < BaseController

        def index
            render json: Post.all
        end

        def show
            render json: post
        end

        def create
            post = Post.new(post_params)

            if post.save
                render json: post, status: 201
            else
                render json: post.errors, status: 422
            end
        end

        def update
            if post.update(post_params)
                render json: post
            else
                render json: post.errors, status: 422
            end
        end

        def destroy
            post.destroy
            render json: {}
        end

        private

        def post_params
            params.require(:post).permit(:author_id, :title, :body)
        end

        def post
            @post ||= Post.find(params[:id])
        end

    end
end
