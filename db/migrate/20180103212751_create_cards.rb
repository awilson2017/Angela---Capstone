class CreateCards < ActiveRecord::Migration[5.1]
  def change
    create_table :cards do |t|
      t.integer :deck_id
      t.string :front
      t.string :back


      t.timestamps
    end
  end
end
