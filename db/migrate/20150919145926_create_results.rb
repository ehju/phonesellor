class CreateResults < ActiveRecord::Migration
  def change
    create_table :results do |t|
      t.text :first
      t.text :second
      t.text :third
      t.text :fourth
      t.text :voice1
      t.text :voice2
      t.text :data1
      t.text :data2
      t.text :val

      t.timestamps null: false
    end
  end
end
