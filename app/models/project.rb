# == Schema Information
#
# Table name: projects
#
#  id                  :integer          not null, primary key
#  title               :string(255)
#  url                 :string(255)
#  description         :text
#  kind                :string(255)
#  position            :integer
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#  poster_file_name    :string(255)
#  poster_content_type :string(255)
#  poster_file_size    :integer
#  poster_updated_at   :datetime
#

class Project < ActiveRecord::Base
  
  attr_accessible :description, :title, :url, :poster, :job_title
   
   has_attached_file :poster, styles: {
      thumb: '250x250>',
      full: '350x197#'
    }
    # :storage => :s3,
    # :path => "/:attachment/:id/:style.:extension",
    # :s3_permissions => :public_read
end
