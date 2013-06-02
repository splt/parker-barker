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

require 'test_helper'

class ProjectImageTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
