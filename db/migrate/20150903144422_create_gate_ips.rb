class CreateGateIps < ActiveRecord::Migration
  def change
    create_table :gate_ips do |t|
      t.string :portao_ip
      t.boolean :portao_biga
      t.string :portao_nome
      t.integer :portao_id

      t.timestamps null: false
    end
  end
end
