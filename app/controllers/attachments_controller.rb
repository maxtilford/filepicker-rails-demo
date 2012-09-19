class AttachmentsController < ApplicationController

  def new
    @attachment = Attachment.new
  end

  def create
    Attachment.create(params[:attachment])
    redirect_to attachments_url
  end

  def index
    @attachments = Attachment.all
  end

end
