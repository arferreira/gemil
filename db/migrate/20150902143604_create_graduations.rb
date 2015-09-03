class CreateGraduations < ActiveRecord::Migration
  def change
    create_table :graduations do |t|
      t.string :pgdesc
      t.string :pgabrev
      t.string :pgabrevtdp
      t.integer :pgrefeitorio
      t.integer :pggrupo1
      t.integer :pggrupotdp
      t.integer :pgclasse
      t.integer :pgid
      t.integer :pggrupo2
      t.string :pgpronome
      t.string :pgpronome2
      t.string :pgabrev1

      t.timestamps null: false
    end
  end
end
