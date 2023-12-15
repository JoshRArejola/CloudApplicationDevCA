class CreatePassengers < ActiveRecord::Migration[7.1]
  def change
    create_table :passengers do |t|
      t.boolean :checkIn
      t.string :name
      t.string :aircraft
      t.string :destination
      t.string :gate

      t.timestamps
    end
  end
end
