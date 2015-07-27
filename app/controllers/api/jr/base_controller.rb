module Api::Jr
    class BaseController < JSONAPI::ResourceController

        protect_from_forgery with: :null_session

    end
end
