class ReviewsController < ApplicationController
  before_action :set_review, only: [:show, :edit, :update, :destroy]

  def index
    @reviews = Review.all
  end

  def show
  end

  def new
    @review = Review.new()
  end

  def create
    @review = Review.new(review)
    if @review.save
      redirect_to @review # (Rails is smart)
    else
      render :new
    end
  end

  def edit
  end

  def update
    # @review.
  end

  def destroy
    @review.destroy
  end

  private

  def set_review
    @review = Review.find(params[:id])
  end

  def review_params
    params.require(:review).permit(:content)
  end

end
