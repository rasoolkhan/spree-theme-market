class CreateAuthors < ActiveRecord::Migration
  def change
    create_table :authors do |t|
      t.string :name
      t.text :bio
      t.string :url
      t.string :email
      t.string :username

      t.timestamps
    end
  end
end
