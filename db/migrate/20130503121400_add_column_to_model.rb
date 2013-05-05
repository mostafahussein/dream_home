class AddColumnToModel < ActiveRecord::Migration
  def change
    add_column :properties , :ticket_id , :integer
  end
end
