class ChangeIntegerLimitInIndexes < ActiveRecord::Migration
  def change
    change_column :customers, :phone_number, :integer, limit: 8
  end
end
