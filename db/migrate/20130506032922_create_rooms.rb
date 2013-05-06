class CreateRooms < ActiveRecord::Migration
  def change
    create_table :rooms do |t|
      t.integer :number_of_rooms
      t.integer :property_id

      t.timestamps
    end
  end
end
