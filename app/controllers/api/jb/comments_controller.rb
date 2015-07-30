module Api::Jb
    class CommentsController < BaseController

        def index
            @records = Comment.all
        end

        def show
        end

    end
end
