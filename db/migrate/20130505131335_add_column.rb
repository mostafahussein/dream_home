class AddColumn < ActiveRecord::Migration
  def up
    add_column :clients , :city_id, :integer
  end

  def down
  end
end
