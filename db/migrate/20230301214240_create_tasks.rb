class CreateTasks < ActiveRecord::Migration[6.0]
  def change
    create_table :tasks do |t|
      t.string :title
      t.boolean :done, default: false
      t.references :todo, foreign_key: true

      t.timestamps
    end
  end
end
