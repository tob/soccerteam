class CreatePlayers < ActiveRecord::Migration[5.1]
  def change
    create_table :players do |t|
      t.string :name
      t.string :image_url
      t.integer :age

      t.timestamps
    end
  end
end
