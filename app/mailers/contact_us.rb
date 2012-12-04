class ContactUs < ActionMailer::Base
  #default from: "sofrj09@gmail.com"

  def user_mail(user)
  	@usermail = user
  	#@url = "sofrj09@gmail.com"
  	mail(:to => "sofrj09@gmail.com", :from => user.email, :subject => user.subject)

  end

  def user_mail2(user)
    @usermail = user
    #@url  = "http://example.com/login"
   mail(:to => user.email, :subject => "You inquiry has been send to Ldezen")
  end
  
end
