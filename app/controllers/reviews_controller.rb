class ReviewsController < ApplicationController
  def index
    @reviews = Review.all
  end

  def show
    @review = Review.find(params[:id])
  end

  def new
    @review = Review.new
  end

  def create
    @review = Review.new
    @review.like = params[:like]
    @review.rating = params[:rating]
    @review.desc = params[:desc]
    @review.brew_id = params[:brew_id]
    @review.batch_id = params[:batch_id]
    @review.user_id = params[:user_id]

    if @review.save
      redirect_to reviews_url, :notice => "Review created successfully."
    else
      render 'new'
    end
  end

  def edit
    @review = Review.find(params[:id])
  end

  def update
    @review = Review.find(params[:id])

    @review.like = params[:like]
    @review.rating = params[:rating]
    @review.desc = params[:desc]
    @review.brew_id = params[:brew_id]
    @review.batch_id = params[:batch_id]
    @review.user_id = params[:user_id]

    if @review.save
      redirect_to review_url(@review.id), :notice => "Review updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @review = Review.find(params[:id])

    @review.destroy

    redirect_to reviews_url, :notice => "Review deleted."
  end
end
