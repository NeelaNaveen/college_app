class CreateRegistrationRooms < ActiveRecord::Migration
  def change
    create_table :registration_rooms do |t|
      t.references :students, index: true
      t.references :courses, index: true
      t.integer :semester

      t.timestamps
    end
  end
end
