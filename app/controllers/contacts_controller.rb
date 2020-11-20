class ContactsController < ApplicationController

	 def new
	   @contact = Contact.new
	 end

	 def create
	   @contact = Contact.new(contact_params)
	   @contact.save
	   flash[:success] = "お問い合わせありがとうございます。メール、または電話にてお返事させて頂きますので今しばらくお待ちください。(サンプルサイトのため送信されていません)"
	   ContactMailer.contact_mail(@contact).deliver
	   redirect_to new_contact_path
	 end

     private
       def contact_params
  	   params.require(:contact).permit(:genre, :name, :address, :body)
     end

end