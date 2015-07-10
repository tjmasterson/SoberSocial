class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string     :title
      t.text     :description
      t.string     :address
      t.datetime   :start_time
      t.datetime   :end_time
      t.float      :lat
      t.float      :lng
      t.integer    :max_people
      t.integer    :num_people_attending
      t.references :user
      t.references :category

      t.timestamps null: false
    end
  end
end
