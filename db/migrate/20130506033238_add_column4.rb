class AddColumn4 < ActiveRecord::Migration
  def up
	add_column :rooms, :room_id, :integer
  end

  def down
  end
end
