module Api::Jr
    class PostResource < JSONAPI::Resource

        has_one :author
        has_many :comments

        attributes :title, :body, :created_at

        filter :author

    end
end
