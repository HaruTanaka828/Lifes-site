class HomesController < ApplicationController

  def  new
    @contact = Contact.new(contact_params)
    @contact.save
    redirect_to contact_path
  end

  def top
  	@newss = News.page(params[:page]).reverse_order
  end

  def recruit
    @recruitments = Recruitment.all
  end

  private
    def  contact_params
    params.require(:contact).permit(:name, :address, :genre, :body)
  end

end
