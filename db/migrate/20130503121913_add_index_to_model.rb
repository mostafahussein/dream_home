class AddIndexToModel < ActiveRecord::Migration
  def change
  end
  add_index :properties , :ticket_id
end
