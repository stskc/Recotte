class AddColumnMains < ActiveRecord::Migration
  def change
    add_column :mains, :viewed, :boolean, default: false, null: false
  end
end
