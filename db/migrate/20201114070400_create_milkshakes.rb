# frozen_string_literal: true

class CreateMilkshakes < ActiveRecord::Migration[6.0]
  def change
    create_table :milkshakes do |t|
      t.string :name
      t.string :description
      t.timestamps
    end
  end
end
