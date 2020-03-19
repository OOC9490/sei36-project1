class AddFranchiseToFighters < ActiveRecord::Migration[5.2]
  def change
    add_column :fighters, :franchise, :text
  end
end
