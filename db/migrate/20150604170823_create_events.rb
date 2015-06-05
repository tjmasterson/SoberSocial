class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string     :title
      t.string     :description
      t.string     :address
      t.datetime   :start_time
      t.integer    :max_people
      t.integer    :num_peopel_attending
      t.references :user
      t.references :category

      t.timestamps null: false
    end
  end
end
