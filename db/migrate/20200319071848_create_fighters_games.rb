class CreateFightersGames < ActiveRecord::Migration[5.2]
  def change
    create_table :fighters_games do |t|
      t.integer :fighter_id
      t.integer :game_id
    end
  end
end
