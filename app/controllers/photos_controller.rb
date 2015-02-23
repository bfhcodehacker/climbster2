class PhotosController < ApplicationController
  before_action :authenticate_user!
  def create
    @place = Place.where(:id => params[:place_id]).first
    if @place.blank?
      render :text => "Not Found", :status => :not_found
    else
      @place.photos.create(photo_params.merge(:user => current_user))
      redirect_to place_path(@place)
    end
  end

  private

  def photo_params
    params.require(:photo).permit(:caption, :picture, :img_credit)
  end
end
