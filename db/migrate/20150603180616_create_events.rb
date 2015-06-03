class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.text :description
      t.string :address
      t.time :time
      t.integer :number_of_people
      t.references :creator

      t.timestamps null: false
    end
  end
end
