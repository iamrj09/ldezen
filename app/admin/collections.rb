ActiveAdmin.register Collection do
  menu :priority => 2

  filter :name
  
  form do|frm|
  	frm.inputs "Collection Details" do
  		frm.input :name
  	end
  	frm.inputs "Collection Images" do
  		frm.has_many :collection_images do |subfrm|
  			if !subfrm.object.id.nil?
  				subfrm.input :_destroy, :as => :boolean, :label => "Delete this entry? #{subfrm.object.image_file_name}"
  			else
  				"File must not be empty" 
  			end
  			subfrm.input :image, as: :file
  		end
  	end

  	frm.buttons
	end

#:as = :boolen is a built in yes or no message box.

  show do
	attributes_table do
		row :name

		row "Collection Images" do |item|
			str = []
			item.collection_images.each do |x|
str << "<img src='"
str << x.image.url(:thumb) if !x.image_file_name.blank?
str << "'>"
		end
		str.join("").html_safe
	end
    end
  end
end
