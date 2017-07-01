class AddTeamToPlayers < ActiveRecord::Migration[5.1]
  def change
    add_reference :players, :team, foreign_key: true
  end
end
