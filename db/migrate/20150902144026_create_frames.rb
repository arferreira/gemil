class CreateFrames < ActiveRecord::Migration
  def change
    create_table :frames do |t|
      t.string :quadrodesc
      t.string :quadroabrev
      t.integer :quadrogrupo
      t.integer :quadroid

      t.timestamps null: false
    end
  end
end
