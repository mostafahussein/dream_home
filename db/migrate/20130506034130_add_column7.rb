class AddColumn7 < ActiveRecord::Migration
  def up
	add_column :clients, :rent_id, :integer
  end

  def down
  end
end
