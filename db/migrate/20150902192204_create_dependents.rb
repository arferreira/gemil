class CreateDependents < ActiveRecord::Migration
  def change
    create_table :dependents do |t|
      t.string :pesdepnome
      t.integer :pesdepgrau
      t.string :pesdepsexo
      t.date :pesdepdn
      t.string :pescodigo
      t.string :pesdepboletimnum
      t.date :pesdepboletimdata
      t.integer :pesdepompub
      t.string :pesdepradionum
      t.date :pesdepradiodata
      t.integer :pesdepirrf
      t.string :pesdeptiposaram
      t.string :pesdeptipo
      t.integer :pesdepuser
      t.date :pesdepdatacad
      t.integer :pesdepid
      t.integer :pesdeppesid
      t.date :pesdepdatacas
      t.integer :pes_cracha_id
      t.date :pes_cracha_val

      t.timestamps null: false
    end
  end
end
