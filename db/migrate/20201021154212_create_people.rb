class CreatePeople < ActiveRecord::Migration[6.0]
  def change
    create_table :people do |t|
      t.string  :first_name, limit: 100
      t.string  :last_name, limit: 100
      t.integer :age
      t.string  :gender, limit: 100
      t.date    :date_of_birth
      t.boolean :james
      t.timestamps
    end
  end
end


