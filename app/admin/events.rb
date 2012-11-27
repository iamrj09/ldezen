ActiveAdmin.register Event do
	menu :label => "Exhibitions", :priority => 3

  form do |frm|
		frm.inputs "Event Details" do 
			frm.input :date, :as => :date
			end

			frm.inputs "Event Images" do
				frm.has_many :event_images do |subfrm|
					if !subfrm.object.id.nil?
						subfrm.input :_destroy, :as => :boolean, :label => "Delete this entry?#{subfrm.object.image_file_name}"
					end
					subfrm.input :image, :as => :file
				end
				frm.buttons
			end 
	end 

	show do
		attributes_table do
		 row :date

		 row "Event Images" do |item|
		 	str = []
		 	item.event_images.each do |hold|
str << "<image src ='"		 		
str << hold.image.url(:thumb) if !hold.image_file_name.blank?
str << "'>"
		end
		str.join("").html_safe
		 	end
		 end
		end	
end
