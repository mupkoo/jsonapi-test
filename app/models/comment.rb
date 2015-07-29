class Comment < ActiveRecord::Base

    # Relations
    belongs_to :post

    # Validations
    validates :body, presence: true

end
