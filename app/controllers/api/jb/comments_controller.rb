module Api::Jb
    class CommentsController < BaseController

        def index
            @records = Comment.all
        end

        def show
        end

        private

        def set_record
            @record = Comment.find(params[:id])
        end

    end
end
