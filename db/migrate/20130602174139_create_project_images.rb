class CreateProjectImages < ActiveRecord::Migration
  def change
    create_table :project_images do |t|
      t.string :title
      t.string :caption
      t.integer :project_id
      t.integer :position

      t.timestamps
    end
    add_index :project_images, [:project_id, :created_at]
  end
end
