class ReviewsController < ApplicationController

  def new
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @review.save
  end

  private

  def restaurant_params
    params.require(:review).permit(:name, :address, :category, :phone_number)
  end
end