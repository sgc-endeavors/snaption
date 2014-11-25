class MediaController < ApplicationController
  def index
    @media = Medium.all
  end

  def new
    @medium = Medium.new
  end

  def create
    @medium = Medium.new(allowed_params.merge(user_id: kenny_loggins.id))
    @medium.save
    redirect_to new_medium_caption_path(@medium)
  end



  private

  def allowed_params
    params.require(:medium).permit(
      :s3_media_loc
    )
  end


end