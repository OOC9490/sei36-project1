class AddDateCreatedToSpecials < ActiveRecord::Migration[5.2]
  def change
    add_column :specials, :entry_created, :date
  end
end
