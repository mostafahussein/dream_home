class AddColumn6 < ActiveRecord::Migration
  def up
	add_column :clients, :room_id, :integer
  end

  def down
  end
end
