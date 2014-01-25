class CreateTodos < ActiveRecord::Migration
  def change
    create_table :todos do |t|
      t.string :title
      t.string :description
      t.integer :priority, default: 0, null: false
      t.string :label, default: "", null: false
      t.timestamps
    end
  end
end
