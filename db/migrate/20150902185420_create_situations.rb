class CreateSituations < ActiveRecord::Migration
  def change
    create_table :situations do |t|
      t.string :situacaodesc
      t.string :situacaoabrev
      t.integer :situacaoid

      t.timestamps null: false
    end
  end
end
