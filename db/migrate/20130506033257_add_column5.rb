class AddColumn5 < ActiveRecord::Migration
  def up
	add_column :clients, :rent_id, :integer
  end

  def down
  end
end
