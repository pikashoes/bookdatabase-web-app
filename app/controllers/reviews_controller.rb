class ReviewsController < ApplicationController

  def create
    review = Review.new
    review.book_id = params['book_id']
    review.rating = params['rating']
    review.content = params['content']
    if review.save
      redirect_to "/books/#{review.book_id}", notice: "Review submitted."
    else
      puts(review.errors.full_messages)
      redirect_to "/books/#{review.book_id}", notice: "Review was not submitted - please complete form fully."
    end
  end
end
