module Api::Base
    class AuthorsController < BaseController

        def index
            render json: Author.all
        end

        def show
            render json: author
        end

        def create
            author = Author.new(author_params)

            if author.save
                render json: author, status: 201
            else
                render json: author.errors, status: 422
            end
        end

        def update
            if author.update(author_params)
                render json: author
            else
                render json: author.errors, status: 422
            end
        end

        def destroy
            author.destroy
            render json: {}
        end

        private

        def author_params
            params.require(:author).permit(:name)
        end

        def author
            @author ||= Author.find(params[:id])
        end

    end
end
