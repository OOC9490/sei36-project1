class ChangeEntryCreatedToDatetimeInFighters < ActiveRecord::Migration[5.2]
  def change
    change_column :fighters, :entry_created, :datetime
  end
end
