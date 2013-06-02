ActiveAdmin.register ProjectImage do
  
form do |f|
      f.inputs "Content" do
        f.input :image, :as => :file
      end
      f.actions
    end
  
# #Edits Index Page...Custom Column Views
  index do
    column :image do |artwork|
       image_tag(artwork.image.url(:thumb), :"data-id" => artwork.id, :class => "homeslide")
     end
     column :project do |artwork|
       content_tag(:span, artwork.project, :"data-id" => artwork.id, :class => "homeslide")
     end
     default_actions
   end

end
