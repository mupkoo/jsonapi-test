module Api::Jb
    class AuthorsController < BaseController

        def index
            @records = Author.all
        end

        def show
        end

    end
end
