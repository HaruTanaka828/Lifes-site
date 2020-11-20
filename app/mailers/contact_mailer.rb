class ContactMailer < ApplicationMailer

	def contact_mail(contact)
	  @contact = contact
	  mail(
	  	from: 'Lifes@example.com',
	  	to: ENV['Gmail_address'],
	  	subject: 'お問い合わせ通知'
	  	)
	end

end
