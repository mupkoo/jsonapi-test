module Api::Jb
    class PostsController < BaseController

        def index
            @records = Post.all
        end

        def show
        end

    end
end
