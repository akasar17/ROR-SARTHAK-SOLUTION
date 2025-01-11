class RatingsController < ApplicationController
  before_action :authenticate_user!

  def create
    rating = Rating.find_or_initialize_by(user_id: current_user.id, store_id: params[:store_id])
    rating.score = params[:score]

    if rating.save
      flash[:success] = "Rating submitted successfully."
    else
      flash[:error] = "Rating submission failed."
    end
    redirect_to stores_path
  end
end
