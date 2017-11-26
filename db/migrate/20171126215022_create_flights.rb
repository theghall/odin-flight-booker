class CreateFlights < ActiveRecord::Migration[5.1]
  def change
    create_table :flights do |t|
      t.integer :from_code_id 
      t.string :depart_date
      t.string :date
      t.string :depart_time
      t.string :time
      t.integer :to_code_id
      t.string :arrival_date
      t.string :date
      t.time :arrival_time

      t.timestamps
    end
    add_index :flights, :from_code_id
    add_foreign_key :flights, :airports, column: :from_code_id, primary_key: :id
    add_index :flights, :to_code_id
    add_foreign_key :flights, :airports, column: :to_code_id, primary_key: :id
    add_index :flights, [:to_code_id, :from_code_id]
  end
end
