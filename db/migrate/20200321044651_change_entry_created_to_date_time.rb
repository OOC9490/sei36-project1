class ChangeEntryCreatedToDateTime < ActiveRecord::Migration[5.2]
  def change
    change_column :specials, :entry_created, :datetime
  end
end
