class AddingVideoObjectToProject < ActiveRecord::Migration
  def self.up
    change_table :projects do |t|
      t.string :video
    end
  end

  def self.down
    remove_column :projects, :video
  end
end
