class Post < ApplicationRecord

  with_options presence: true do
    validates :visual_reading
    validates :question
    validates :answer
    validates :image
  end

  belongs_to :user
  has_one_attached :image
  has_many :comments
end
