class Favorite < ApplicationRecord

  belongs_to :book
  belongs_to :user

  #def book
  #  Book.find_by(id: self.book_id)
  #end

  #def user
  #  User.find_by(id: self.user_id)
  #end

end
