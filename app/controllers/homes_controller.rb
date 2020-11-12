class HomesController < ApplicationController

  def  new
    @contact = Contact.new(contact_params)
    @contact.save
    redirect_to contact_path
  end

  private
    def  contact_params
    params.require(:contact).permit(:name, :address, :genre, :body)
  end

end
