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

require 'test_helper'

class ProjectTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
