class ContactsController < ApplicationController

	 def new
	   @contact = Contact.new
	 end

	 def create
	   @contact = Contact.new(contact_params)
	   @contact.save
	   flash[:success] = "お問い合わせありがとうございます。ご入力頂いたメールアドレス宛にお返事させて頂きますので今しばらくお待ちください。"
	   ContactMailer.contact_mail(@contact).deliver
	   redirect_to contact_path
	 end

     private
       def contact_params
  	   params.require(:contact).permit(:genre, :name, :address, :body)
     end

end