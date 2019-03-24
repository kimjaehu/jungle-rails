class ReviewsController < ApplicationController

  before_filter :authorize
  def create
    
    # byebug
    @product = Product.find(params[:product_id])
    @review = Review.new(review_params)
    @review.product = @product
    @review.user = current_user   

    if @review.save
      redirect_to product_path(@product)
    else
      # byebug
      render :new
    end

  end

  def destroy
    @review = Review.find params[:id]
    @review.destroy

    redirect_to :back

  end

  private
    def review_params
      params.require(:review).permit(
        :description,
        :rating,
        :user_id,
        :product_id
      )
    end


  # Add blank stars after rating however errors 'undefined method'
  def blank_stars
    5 - @reviews.rating.to_i
  end
  helper_method :blank_stars

end