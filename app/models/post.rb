class Post < ApplicationRecord
    has_many_attached :images
    belongs_to :user
    has_many :likes, dependent: :destroy
    has_many :users, through: :likes
    def already_liked?(user)
        self.likes.exists?(user_id: user.id)
    end
end
