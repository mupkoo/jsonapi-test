class Comment < ActiveRecord::Base

    # Relations
    belongs_to :post

end
