class Post < ActiveRecord::Base

    # Relations
    belongs_to :author
    has_many :comments

end
