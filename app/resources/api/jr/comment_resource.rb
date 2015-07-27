module Api::Jr
    class CommentResource < JSONAPI::Resource

        has_one :post

        attributes :body, :created_at

    end
end
