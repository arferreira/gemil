class CreateGates < ActiveRecord::Migration
  def change
    create_table :gates do |t|
      t.string :portao_nome
      t.integer :portao_nivel_acesso
      t.boolean :portao_ativo
      t.integer :portao_id
      t.integer :portao_tipo

      t.timestamps null: false
    end
  end
end
