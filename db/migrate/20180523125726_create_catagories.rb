class CreateCatagories < ActiveRecord::Migration[5.1]
  def change
    create_table :catagories do |t|
      t.string :name
      t.integer :position    
      t.timestamps    
    end

    add_column :events, :catagory_id, :integer
    add_index :events, :catagory_id
  end
end
