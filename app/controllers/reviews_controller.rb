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

  end
end