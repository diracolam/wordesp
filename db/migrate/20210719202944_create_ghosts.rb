class CreateGhosts < ActiveRecord::Migration[6.1]
  def change
    create_table :ghosts do |t|
      t.string :name
      t.integer :age
      t.integer :volume

      t.timestamps
    end
  end
end
