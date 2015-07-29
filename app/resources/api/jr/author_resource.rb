module Api::Jr
    class AuthorResource < BaseResource

        has_many :posts

        attributes :name

    end
end
