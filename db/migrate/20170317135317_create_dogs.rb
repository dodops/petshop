class CreateDogs < ActiveRecord::Migration[5.0]
  def change
    create_table :dogs do |t|
      t.boolean :castrated, default: false
      t.integer :gender
      t.date :birth_date
      t.string :name
      t.date :last_visit

      t.timestamps
    end
  end
end
