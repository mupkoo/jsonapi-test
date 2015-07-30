module Api::Jb
    class AuthorsController < BaseController

        def index
            @records = Author.all
        end

        def show
        end

        private

        def set_record
            @record = Author.find(params[:id])
        end

    end
end
