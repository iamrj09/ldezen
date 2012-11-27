ActiveAdmin.register Publication do
  menu :priority => 4
  form do|frm|
  	frm.inputs "Publication Details" do
  	frm.input :name
  end
  	frm.inputs "Publication Images" do
  		frm.has_many :publication_images do |subfrm|
  			if !subfrm.object.id.nil?
  				subfrm.input :_destroy, :as => :boolean, :label => "Delete this entry?#{subfrm.object.image_file_name}"	
  			end
  		subfrm.input :image, as: :file
  	end
  	frm.buttons
  end
  end

  show do
  	attributes_table do
  		row :name

  		row "Publication Images" do |item|
  			str = []
  			item.publication_images.each do |x|
 str << "<image src='"
 str << x.image.url(:thumb) if !x.image_file_name.blank?
 str << "'>"
		end
		str.join("").html_safe
  	end
  end
end

end
