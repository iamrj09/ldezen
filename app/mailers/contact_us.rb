class ContactUs < ActionMailer::Base
  #default from: "sofrj09@gmail.com"

  def user_mail(user)
  	@usermail = user
  	#@url = "sofrj09@gmail.com"
  	mail(:to => "sofrj09@gmail.com", :subject => "Hello World")
  end
  
end
