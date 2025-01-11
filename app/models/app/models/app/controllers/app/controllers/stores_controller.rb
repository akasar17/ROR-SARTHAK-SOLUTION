class StoresController < ApplicationController
  before_action :authenticate_user!

  def index
    @stores = Store.all
    @stores = @stores.where("name ILIKE ? OR address ILIKE ?", "%#{params[:query]}%", "%#{params[:query]}%") if params[:query].present?
  end
end
