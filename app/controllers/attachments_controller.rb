class AttachmentsController < ApplicationController

  def new
    @attachment = Attachment.new
  end

  def create
    if @attachment = Attachment.create(params[:attachment])
      redirect_to attachments_url
    else
      render :show
    end
  end

  def index
    @attachments = Attachment.all
  end

end
