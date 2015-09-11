class CreatePhones < ActiveRecord::Migration
  def change
    create_table :phones do |t|
      t.string :name
      t.integer :company
      t.integer :service
      t.integer :payment
      t.integer :age
      t.string :series
      t.integer :data
      t.integer :voice
      t.integer :price

      t.timestamps null: false
    end
  end
end
