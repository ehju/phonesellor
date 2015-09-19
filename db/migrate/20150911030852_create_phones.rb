class CreatePhones < ActiveRecord::Migration
  def change
    create_table :phones do |t|
      t.integer :company     
      t.integer :payment
      t.integer :service
      t.integer :age
      t.string :series
      t.string :name
      t.integer :controltype
      t.integer :price24
      t.integer :voice
      t.string :toolv
      t.integer :letter
      t.integer :webdata  
      t.string :toold    
      t.string :etc     

      t.timestamps null: false
    end
  end
end
