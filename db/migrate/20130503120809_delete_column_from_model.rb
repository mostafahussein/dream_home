class DeleteColumnFromModel < ActiveRecord::Migration
  def up
    remove_column :tickets , :property_id
  end

  def down
  end
end
