class CreateBillpaidusers < ActiveRecord::Migration[5.0]
  def change
    create_table :billpaidusers do |t|
      t.references :event, foreign_key: true
      t.references :user, foreign_key: true
      t.integer :paid_amt
      t.timestamps
    end
  end
end
