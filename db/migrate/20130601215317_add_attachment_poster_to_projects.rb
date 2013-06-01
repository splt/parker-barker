class AddAttachmentPosterToProjects < ActiveRecord::Migration
  def self.up
    change_table :projects do |t|
      t.has_attached_file :poster
    end
  end

  def self.down
    drop_attached_file :projects, :poster
  end
end
