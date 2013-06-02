# == Schema Information
#
# Table name: project_images
#
#  id                 :integer          not null, primary key
#  title              :string(255)
#  caption            :string(255)
#  project_id         :integer
#  position           :integer
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#  image_file_name    :string(255)
#  image_content_type :string(255)
#  image_file_size    :integer
#  image_updated_at   :datetime
#

class ProjectImage < ActiveRecord::Base
  belongs_to :project
  
  attr_accessible :caption, :project_id, :title, :image, :position
  
  has_attached_file :image, styles: {
      thumb: '250x250>',
      full: '350x197#'
    }
    # :storage => :s3,
    # :path => "/:attachment/:id/:style.:extension",
    # :s3_permissions => :public_read
end
