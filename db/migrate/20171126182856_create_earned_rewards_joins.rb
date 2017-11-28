class CreateEarnedRewardsJoins < ActiveRecord::Migration[5.1]
  def change
    create_table :earned_rewards_joins do |t|
      t.references :user, foreign_key: true
      t.references :reward, foreign_key: true

      t.timestamps
    end
  end
end
