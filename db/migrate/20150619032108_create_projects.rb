class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :title
      t.string :description
      t.references :user
      t.string :url
      t.string :deployed_url

      t.timestamps null: false
    end
  end
end
