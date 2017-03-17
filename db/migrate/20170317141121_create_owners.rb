class CreateOwners < ActiveRecord::Migration[5.0]
  def change
    create_table :owners do |t|
      t.string :phone
      t.string :name

      t.timestamps
    end
  end
end