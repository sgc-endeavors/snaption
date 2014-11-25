class CaptionsController < ApplicationController

  def create
    @caption = Caption.new(title: params[:caption][:title], medium_id: params[:medium_id])
    @caption.user_id = kenny_loggins.id if kenny_loggins
    @caption.save
    redirect_to root_path
  end

  def new
    @medium = Medium.find(params[:medium_id])

  end





end