class FixColumnName1 < ActiveRecord::Migration
  def up
    rename_column :tickets, :type, :ticket_type
  end

  def down
  end
end
