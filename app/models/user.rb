class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  # Tabela apenas para autenticar com o ldap
 	devise :ldap_authenticatable, :rememberable, :trackable
end
