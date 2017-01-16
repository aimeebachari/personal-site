class ContactsController < ApplicationController
  def create
    @contact = Contact.new(contact_params)
    if @contact.save
      flash[:notice] = "I'll be in touch!"
      redirect_to root_path
    else
      flash[:alert] = @contact.errors.full_messages.to_sentence
      render :'home/index'
    end
  end

  private

  def contact_params
    params.require(:contact).permit(:name, :email)
  end
end
