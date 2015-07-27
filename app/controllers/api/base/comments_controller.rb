module Api::Base
    class CommentsController < BaseController

        def index
            render json: Comment.all
        end

        def show
            render json: comment
        end

        def create
            comment = Comment.new(comment_params)

            if comment.save
                render json: comment, status: 201
            else
                render json: comment.errors, status: 422
            end
        end

        def update
            if comment.update(comment_params)
                render json: comment
            else
                render json: comment.errors, status: 422
            end
        end

        def destroy
            comment.destroy
            render json: {}
        end

        private

        def comment_params
            params.require(:comment).permit(:post_id, :body)
        end

        def comment
            @comment ||= Comment.find(params[:id])
        end

    end
end
