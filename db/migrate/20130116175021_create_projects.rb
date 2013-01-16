class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :url
      t.date :launch_date
      t.text :description
      t.string :responsibilities
      t.string :title
      t.string :technology
      t.string :image
      t.string :git

      t.timestamps
    end
  end
end
