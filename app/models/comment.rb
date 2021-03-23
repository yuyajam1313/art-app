class Comment < ApplicationRecord

  with_options presence: true do
    validates :visual_reading
    validates :question
    validates :answer
  end

  belongs_to :user
  belongs_to :post

end
