class AddAttachmentImageToProjectImages < ActiveRecord::Migration
  def self.up
    change_table :project_images do |t|
      t.has_attached_file :image
    end
  end

  def self.down
    drop_attached_file :project_images, :image
  end
end
