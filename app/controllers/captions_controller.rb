class CaptionsController < ApplicationController

  def create
    @caption = Caption.new(title: params[:caption][:title], medium_id: params[:medium_id])
    @caption.user_id = kenny_loggins.id if kenny_loggins
    if @caption.save
      render :status => :created, :json => {title: @caption.title}
    else
      render :nothing => true, :json => {errors: @caption.errors.messages[:title]}
    end
  end

  def new
    @medium = Medium.find(params[:medium_id])
  end


end