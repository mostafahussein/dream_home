class CreateRents < ActiveRecord::Migration
  def change
    create_table :rents do |t|
      t.integer :rent_amount

      t.timestamps
    end
  end
end
