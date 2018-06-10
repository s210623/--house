class CreateRubies < ActiveRecord::Migration[5.1]
  def change
    create_table :rubies do |t|
      t.string :name
      t.boolean :status
      t.integer :check

      t.timestamps
    end
  end
end
