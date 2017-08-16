class Review < ApplicationRecord

  belongs_to :book

  validates :rating, presence:true
  validates :content, presence:true

end
