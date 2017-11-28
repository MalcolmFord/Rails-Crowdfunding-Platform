class ChangeDataType < ActiveRecord::Migration[5.1]
  def change
    change_column :Users, :password, :digest
  end
end
