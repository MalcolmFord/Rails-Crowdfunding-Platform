class CreatePaymentTypes < ActiveRecord::Migration[5.1]
  def change
    create_table :payment_types do |t|
      t.string :method
      t.integer :card_number
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
