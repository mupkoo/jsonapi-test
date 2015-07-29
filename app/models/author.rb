class Author < ActiveRecord::Base

    # Relations
    has_many :posts

    # Validations
    validates :name, presence: true

end
