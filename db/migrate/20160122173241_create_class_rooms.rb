class CreateClassRooms < ActiveRecord::Migration
  def change
    create_table :class_rooms do |t|
      t.integer :number
      t.string :building

      t.timestamps
    end
  end
end
