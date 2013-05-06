class AddColumn3 < ActiveRecord::Migration
  def up
	add_column :clients, :property_id, :integer
  end

  def down
  end
end
