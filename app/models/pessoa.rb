class Pessoa < ActiveRecord::Base
  belongs_to :posto_graduacao
  belongs_to :especialidade
end
