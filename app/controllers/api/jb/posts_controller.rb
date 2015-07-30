module Api::Jb
    class PostsController < BaseController

        def index
            @records = Post.all
        end

        def show
        end

        private

        def set_record
            @record = Post.find(params[:id])
        end

    end
end
