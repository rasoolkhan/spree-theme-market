class CreateAdministrators < ActiveRecord::Migration
  def change
    create_table :administrators do |t|
      t.string :email
      t.string :username
      t.string :name

      t.timestamps
    end
  end
end
