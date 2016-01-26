class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :number
      t.string :description
      t.references :professor, index: true
      t.references :class_room, index: true

      t.timestamps
    end
  end
end
