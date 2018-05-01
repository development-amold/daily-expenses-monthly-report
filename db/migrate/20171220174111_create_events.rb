class CreateEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :events do |t|
      t.datetime :event_date
      t.string :location
      t.integer :total_amount
      t.references :event_type, foreign_key: true

      t.timestamps
    end
  end
end
