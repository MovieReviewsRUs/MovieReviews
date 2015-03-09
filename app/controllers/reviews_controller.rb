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

  def update
    @review = Review.find(params[:id])

    if @review.update(review_params)
      head :no_content
    else
      render json: @review.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @review = Review.find(params[:id])
    @review.destroy

    head :no_content
  end

  private
  def review_params
    params.require(:review).permit(:author, :comment, :star_rating)
  end
end
