class CreateUser < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name, null: false
      t.string :role, limit: 1
    end
  end
end
