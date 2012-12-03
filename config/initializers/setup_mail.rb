  ActionMailer::Base.smtp_settings = 
  {

    :address            => 'smtp.gmail.com',
    :port               => 587,
    #:domain             => 'localhost', #you can also use google.com
    :authentication     => :plain,
    :user_name          => 'sofrj09@gmail.com',
    :password           => 'sofrj200900457'
}