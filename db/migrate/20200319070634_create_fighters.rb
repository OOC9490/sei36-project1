class CreateFighters < ActiveRecord::Migration[5.2]
  def change
    create_table :fighters do |t|
      t.text :name
      t.text :stock_symbol
      t.text :availability
      t.text :image
      t.text :final_smash

      t.timestamps
    end
  end
end
