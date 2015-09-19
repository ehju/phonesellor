class CreateResults < ActiveRecord::Migration
  def change
    create_table :results do |t|
        t.string :title
      t.string :first
      t.string :second
      t.string :third
      t.string :fourth
      t.string :voice1
      t.string :voice2
      t.string :data1
      t.string :data2
      t.string :val

      t.timestamps null: false
    end
  end
end
