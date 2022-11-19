class CreateReadings < ActiveRecord::Migration[7.0]
  def change
    create_table :readings do |t|
      t.references :book, foreign_key: true
      t.references :author, foreign_key: true
      t.date :date
      t.timestamps
    end
  end
end
