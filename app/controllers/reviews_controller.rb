class ReviewsController < ActionController::API
  def index
    @reviews = Review.all

    render json: @reviews
  end

  def create
    @review = Review.new(review_params)

    if @review.save
      render json: @review, status: :created, location: @review
    else
      render json: @review.errors, status: :unprocessable_entity
    end
  end
end
