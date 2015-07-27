class Author < ActiveRecord::Base

    # Relations
    has_many :posts

end
