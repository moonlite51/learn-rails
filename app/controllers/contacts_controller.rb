class ContactsController < ApplicationController

  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(secure_params)
    if @contact.valid?
      # TODO send message
      flash[:notice] = "Message sent from #{@contact.name}"
      redirect_to root_path
      #status: :found, notice: "Message sent from #{@contact.name}"
    else
      render :new
    end
  end

  private

  def secure_params
    params.require(:contact).permit(:name, :email, :content)
  end

end

  # below is the old way
      # def process_form
        # Rails.logger.debug "DEBUG: params are #{params.inspect}"
        # flash[:notice] = "Received request from #{params[:name]}"
        # redirect_to root_path
      # end
