class RemoveColumn2 < ActiveRecord::Migration
  def up
	remove_column :rooms, :room_id
  end

  def down
  end
end
