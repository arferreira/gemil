class CreatePessoas < ActiveRecord::Migration
  def change
    create_table :pessoas do |t|
      t.string :saram
      t.integer :antiguidade
      t.string :nome_completo
      t.string :nome_guerra
      t.string :imagem
      t.date :data_nascimento
      t.references :posto_graduacao, index: true, foreign_key: true
      t.references :especialidade, index: true, foreign_key: true
      t.integer :situacao
      t.string :sispes
      t.string :identidade
      t.string :rarc
      t.string :cpf
      t.string :pispasep
      t.string :titulonum
      t.integer :titulozona
      t.integer :titulosecao
      t.string :titulocidade
      t.string :titulouf
      t.string :cnhnum
      t.string :cnhcat
      t.date :cnhvalidade
      t.integer :om
      t.integer :omanterior
      t.string :motivotransf
      t.integer :localtrabalho
      t.string :turma
      t.string :tempoantano
      t.string :tempoantmes
      t.string :tempoantdia
      t.string :sexo
      t.string :religiao
      t.integer :estadocivil
      t.integer :tiposangue
      t.string :filpai
      t.string :filmae
      t.string :naturalcidade
      t.string :naturaluf
      t.string :endereco
      t.string :bairro
      t.string :numero
      t.string :cidade
      t.string :uf
      t.string :cep
      t.string :fone1
      t.string :fone2
      t.string :fonetrab
      t.string :fonetrabramal
      t.string :email
      t.string :funcao
      t.string :falert
      t.integer :falertesquadrao
      t.integer :escala
      t.integer :livrobruxa
      t.string :comportamento
      t.integer :banco
      t.string :agencia
      t.string :contacorrente
      t.text :obs
      t.string :tipo
      t.integer :user
      t.date :datacadastro
      t.integer :cracha
      t.integer :turnotrabalho
      t.integer :cmt
      t.integer :escala1
      t.string :login
      t.String :secao
      t.integer :escala_preta
      t.integer :escala_vermelha
      t.integer :escala_roxa
      t.integer :escala_amarela
      t.boolean :mostra_niver
      t.integer :cracha_id, :limit => 5
      t.date :cracha_validade
      t.integer :vilaa
      t.integer :escala_receber_email
      t.integer :esqsec_id
      t.integer :ass_dispensa
      t.integer :funcao_id

      t.timestamps null: false
    end
  end
end
