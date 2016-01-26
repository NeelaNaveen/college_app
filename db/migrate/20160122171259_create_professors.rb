class CreateProfessors < ActiveRecord::Migration
  def change
    create_table :professors do |t|
      t.string :name
      t.string :email
      t.integer :phone
      t.references :department, index: true

      t.timestamps
    end
  end
end
