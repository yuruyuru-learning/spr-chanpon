class CreateGroups < ActiveRecord::Migration[5.2]
  def change
    create_table :groups do |t|
      t.string :name
      t.string :display_name
      t.integer :round
      t.string :choose
      t.timestamps null: false
    end
  end
end
