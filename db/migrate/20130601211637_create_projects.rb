class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :title
      t.string :url
      t.text :description
      t.string :job_title
      t.integer :position

      t.timestamps
    end
  end
end
