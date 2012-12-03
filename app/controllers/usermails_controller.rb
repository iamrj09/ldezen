class UsermailsController < InheritedResources::Base

def create
    @usermail = Usermail.new(params[:usermail])

    respond_to do |format|
      if @usermail.save
        ContactUs.user_mail(@usermail).deliver
        format.html { redirect_to usermails_path, notice: 'Your message was successfully sent.' }
        format.json { render json: @usermail, status: :created, location: @usermail }
      else
        format.html { render action: "new" }
        format.json { render json: @usermail.errors, status: :unprocessable_entity }
      end
    end
end

def index
@usermail = Usermail.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @usermail }
	end
end



end
