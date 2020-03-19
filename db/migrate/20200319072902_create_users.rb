class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.text :email
      t.string :password_digest
      t.text :profile_image
      t.text :nickname

      t.timestamps
    end
  end
end
