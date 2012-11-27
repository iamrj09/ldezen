ActiveAdmin.register_page "Dashboard" do
menu :priority => 1
  content :title => proc{ I18n.t("active_admin.dashboard") } do

    columns do

      column do
        panel "Recent Uploads" do
          table_for Collection.order('id').limit(5) do
            #column("Collection Images"){|collection| 
            #  link_to(collection.name, admin_collection_path(collection)), 
            #  collection.name
            #}
    column("Collection Images") do |collection|
    str = []
    
    str << link_to(collection.name, admin_collection_path(collection))

    collection.collection_images.each do |x|
    #str << "<img src='"
    #str << "["
        str << "<div style = 'float: right; margin-right: 900px;'>"
        str << x.image_file_name if !x.image_file_name.blank? 
        str << "</div>"
        str << "<br/>"
    #str << "'>"
        end
        str.join("").html_safe
      end 
  #index :as => :block do |product|
   # div :for => product do
     # h2 auto_link(product.title)
     # div do
      #  simple_format product.description
      #end
    #end
  #end

              #table_for CollectionImage.limit(5)
              #column(""){|collectionimage| link_to(collectionimage.name, admin_collection_path(collectionimage)) }
          end
        end
      end

    end # columns

    columns do
        column do
        panel "Recent Collections" do
          table_for Publication.order('id').limit(5) do
            column("Publication Images") do |publication|
                str = []
                str << link_to(publication.name, admin_publication_path(publication))

                publication.publication_images.each do |hold|
                  str << "<div style = 'float: right; margin-right: 750px;'>"
                  str << hold.image.url() if !hold.image_file_name.blank?
                  str << "</div>"
                  str << "<br/>"
                end
                str.join("").html_safe
            end
          end
        end
      end
    end

    columns do
        column do
        panel "Recent Events" do
            table_for Event.order('id').limit(5) do
            column("Event Images") do |event|
              str  = []
              str << link_to(event.date, admin_event_path(event))

              event.event_images.eah do |holder|
                str << "<div style = 'float:right; margin-right: 700'>"
              str << holder.image.url(:thumb) if !holder.image_file_name.blank?
                str << "</div>"
                str << "<br/>"
                          end
                          str.join("").html_safe
        end
      end
      end
    end
    end

    # Here is an example of a simple dashboard with columns and panels.
    #
    # columns do
    #   column do
    #     panel "Recent Posts" do
    #       ul do
    #         Post.recent(5).map do |post|
    #           li link_to(post.title, admin_post_path(post))
    #         end
    #       end
    #     end
    #   end

    #   column do
    #     panel "Info" do
    #       para "Welcome to ActiveAdmin."
    #     end
    #   end
    # end
   end# content
end
