class Post < ActiveRecord::Base

    # Relations
    belongs_to :author
    has_many :comments

    # Validations
    validates :title, presence: true
    validates :body, presence: true

end
