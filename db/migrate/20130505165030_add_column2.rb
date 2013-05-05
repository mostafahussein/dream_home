class AddColumn2 < ActiveRecord::Migration
  def up
	add_column :users , :employee , :boolean, default: false
  end

  def down
  end
end
