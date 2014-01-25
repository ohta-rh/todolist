class CreateTodos < ActiveRecord::Migration
  def change
    create_table :todos do |t|
      t.string :name
      t.string :description
      t.integer :priority, default: 0, null: false
      t.timestamps
    end
  end
end
