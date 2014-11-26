class MediaController < ApplicationController
  def index
    if params[:selected]
      @media = Medium.where(id: params[:selected])
    else
      @media = Medium.all
    end
  end

  def new
    @medium = Medium.new
  end

  def create
    @medium = Medium.new(allowed_params.merge(user_id: kenny_loggins.id))
    @medium.save
    redirect_to media_path(selected: @medium.id)
  end



  private

  def allowed_params
    params.require(:medium).permit(
      :s3_media_loc
    )
  end


end