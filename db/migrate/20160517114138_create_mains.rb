class CreateMains < ActiveRecord::Migration
  def change
    create_table :mains do |t|
      t.string :artist
      t.string :song
      t.string :youtube

      t.timestamps null: false
    end
  end
end
