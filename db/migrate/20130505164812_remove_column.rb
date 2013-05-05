class RemoveColumn < ActiveRecord::Migration
  def up
	remove_column :users , :employee
  end

  def down
  end
end
