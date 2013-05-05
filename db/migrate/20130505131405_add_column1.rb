class AddColumn1 < ActiveRecord::Migration
  def up
    add_column :clients , :street_id, :integer
  end

  def down
  end
end
