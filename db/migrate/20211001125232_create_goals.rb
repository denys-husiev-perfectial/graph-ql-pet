# frozen_string_literal: true

class CreateGoals < ActiveRecord::Migration[6.1]
  def change
    create_table :goals do |t|
      t.string :name, null: false
      t.string :status, null: false
      t.integer :progress, null: false, default: 0
      t.references :user, null: false, foreign_key: true
      t.references :approver, foreign_key: { to_table: :users }

      t.timestamps
    end
  end
end
