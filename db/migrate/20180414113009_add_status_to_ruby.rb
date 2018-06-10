class AddStatusToRuby < ActiveRecord::Migration[5.1]
  def change
  	add_column :rubies, :is_public, :boolean
  end
end
