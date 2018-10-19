class CreateCals < ActiveRecord::Migration[5.2]
  def change
    create_table :cals do |t|
      t.integer :ryieldi
      t.integer :ryielde
      t.integer :prodi
      t.integer :prode
      t.float :cprice

      t.timestamps
    end
  end
end
