class AddDateCreatedToFighters < ActiveRecord::Migration[5.2]
  def change
    add_column :fighters, :entry_created, :date
  end
end
