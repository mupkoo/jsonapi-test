module Api::Jr
    class CommentResource < BaseResource

        has_one :post

        attributes :body, :created_at

    end
end
