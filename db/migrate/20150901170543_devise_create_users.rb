class DeviseCreateUsers < ActiveRecord::Migration
 def change
    create_table(:users) do |t|
      ## LDAP autenticaç~ao
      t.string :login, :null => false, :default => "", :unique => true

      ## Deixar autenticado
      t.datetime :remember_created_at

      ## Movimentos de login
      t.integer  :sign_in_count, :default => 0
      t.datetime :current_sign_in_at
      t.datetime :last_sign_in_at
      t.string   :current_sign_in_ip
      t.string   :last_sign_in_ip
      t.timestamps
    end

    add_index :users, :login, :unique => true
  end
end
