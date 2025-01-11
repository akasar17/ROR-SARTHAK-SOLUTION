class AdminsController < ApplicationController
  before_action :require_admin

  def dashboard
    @total_users = User.count
    @total_stores = Store.count
    @total_ratings = Rating.count
  end

  private

  def require_admin
    redirect_to root_path unless current_user&.role == "admin"
  end
end
