ActiveAdmin.register Project do
	form :partial => "form"

	config.sort_order = 'position_asc'

	index do
		column :image do |artwork|
		   image_tag(artwork.poster(:thumb), :"data-id" => artwork.id, :class => "homeslide")
		end
		column :title do |artwork|
		   content_tag(:span, artwork.title, :"data-id" => artwork.id, :class => "homeslide")
		end
		default_actions
   end

	collection_action :sort, :method => :post do
		params[:ids].each_with_index do |id, index|
			artwork = Project.find(id)
			artwork.update_attribute(:position, index.to_i+1)
		end
		head 200
	end

end
