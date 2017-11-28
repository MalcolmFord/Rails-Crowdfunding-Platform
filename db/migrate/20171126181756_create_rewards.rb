class CreateRewards < ActiveRecord::Migration[5.1]
  def change
    create_table :rewards do |t|
      t.string :title
      t.text :description
      t.integer :remaining_stock
      t.integer :amount
      t.references :project, foreign_key: true

      t.timestamps
    end
  end
end
