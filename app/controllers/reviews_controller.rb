class ReviewsController < ApplicationController

  def create
    review = Review.new
    review.book_id = params['book_id']
    review.rating = params['rating']
    review.content = params['content']
    review.save
    redirect_to "/books/#{review.book_id}", notice: "Review submitted."
  end

end
