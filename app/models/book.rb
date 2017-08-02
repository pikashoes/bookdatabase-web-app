class Book < ApplicationRecord

  validates :title, presence:true
  validates :summary, length: { minimum: 1 }
  
  validates :author, presence:true
  validates :genre, presence:true

  has_many :reviews

end
