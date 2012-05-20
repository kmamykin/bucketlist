class ReviewsController < ApplicationController
  def create
    @experience = Experience.find(params[:experience_id])
    if @experience.reviews.create(params[:review].merge(:user=>current_user))
      redirect_to root_path, :notice => 'Review created successfully'
    else
      redirect_to root_path, :alert => 'Failed to create a review'
    end
  end

  def update
    @experience = Experience.find(params[:experience_id])
    @review = @experience.reviews.find(params[:id])
    if @review.update_attributes(params[:review])
      redirect_to root_path, :notice => 'Review updated successfully'
    else
      redirect_to root_path, :alert => 'Failed to update review'
    end
  end

  def edit
    @experience = Experience.find(params[:experience_id])
    @review = @experience.reviews.find(params[:id])
  end
end