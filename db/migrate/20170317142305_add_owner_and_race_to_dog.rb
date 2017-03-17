class AddOwnerAndRaceToDog < ActiveRecord::Migration[5.0]
  def change
    add_reference :dogs, :owner, foreign_key: true
    add_reference :dogs, :race, foreign_key: true
  end
end
