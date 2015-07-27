module Api::Jr
    class AuthorResource < JSONAPI::Resource

        has_many :posts

        attributes :name

    end
end
