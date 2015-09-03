class CreateSpecialties < ActiveRecord::Migration
  def change
    create_table :specialties do |t|
      t.string :espdesc
      t.string :espabrev
      t.string :espcodigo
      t.integer :espgrupo1
      t.string :espgrupo2
      t.integer :espid

      t.timestamps null: false
    end
  end
end
