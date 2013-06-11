# == Schema Information
#
# Table name: projects
#
#  id                  :integer          not null, primary key
#  title               :string(255)
#  url                 :string(255)
#  description         :text
#  job_title           :string(255)
#  position            :integer
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#  poster_file_name    :string(255)
#  poster_content_type :string(255)
#  poster_file_size    :integer
#  poster_updated_at   :datetime
#

class Project < ActiveRecord::Base
  has_many :project_image, :order => 'position'
  accepts_nested_attributes_for :project_image, :allow_destroy => true
  
  attr_accessible :description, :title, :url, 
                  :poster, :job_title, :tag_list, 
                  :video, :project_image_attributes
  
  acts_as_taggable
   
   has_attached_file :poster, styles: {
      thumb: '100x100>',
      full: '250x165#'
     },
    :storage => :s3,
       :path => "/:attachment/:id/:style.:extension",
       :s3_permissions => :public_read
end
