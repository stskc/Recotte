class CreateRecos < ActiveRecord::Migration
  def change
    create_table :recos do |t|
      t.string :artist
      t.string :song
      t.string :youtube
      t.integer :star

      t.timestamps null: false
    end
  end
end
