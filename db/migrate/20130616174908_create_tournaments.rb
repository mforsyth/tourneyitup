class CreateTournaments < ActiveRecord::Migration
  def change
    create_table :tournaments do |t|
      t.datetime :occurs_at, null: false
      t.string :game, null: false
      t.string :address, null: false
      t.timestamps
    end
  end
end
