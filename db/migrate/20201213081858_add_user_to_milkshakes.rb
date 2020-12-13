class AddUserToMilkshakes < ActiveRecord::Migration[6.0]
  def change
    add_reference :milkshakes, :user, null: false, foreign_key: true
  end
end
