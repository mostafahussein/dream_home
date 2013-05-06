class AddColumn8 < ActiveRecord::Migration
  def up
	add_column :rents, :property_id, :integer
  end

  def down
  end
end
