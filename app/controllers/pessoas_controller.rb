class PessoasController < ApplicationController
  before_action :set_pessoa, only: [:show, :edit, :update, :destroy]

  # GET /pessoas
  # GET /pessoas.json
  def index
    @pessoas = Pessoa.all
  end

  # GET /pessoas/1
  # GET /pessoas/1.json
  def show
  end

  # GET /pessoas/new
  def new
    @pessoa = Pessoa.new
  end

  # GET /pessoas/1/edit
  def edit
  end

  # POST /pessoas
  # POST /pessoas.json
  def create
    @pessoa = Pessoa.new(pessoa_params)

    respond_to do |format|
      if @pessoa.save
        format.html { redirect_to @pessoa, notice: 'Pessoa was successfully created.' }
        format.json { render :show, status: :created, location: @pessoa }
      else
        format.html { render :new }
        format.json { render json: @pessoa.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pessoas/1
  # PATCH/PUT /pessoas/1.json
  def update
    respond_to do |format|
      if @pessoa.update(pessoa_params)
        format.html { redirect_to @pessoa, notice: 'Pessoa was successfully updated.' }
        format.json { render :show, status: :ok, location: @pessoa }
      else
        format.html { render :edit }
        format.json { render json: @pessoa.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pessoas/1
  # DELETE /pessoas/1.json
  def destroy
    @pessoa.destroy
    respond_to do |format|
      format.html { redirect_to pessoas_url, notice: 'Pessoa was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pessoa
      @pessoa = Pessoa.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pessoa_params
      params.require(:pessoa).permit(:saram, :antiguidade, :nome_completo, :nome_guerra, :imagem, :data_nascimento, :posto_graduacao_id, :especialidade_id, :situacao, :sispes, :identidade, :rarc, :cpf, :pispasep, :titulonum, :titulozona, :titulosecao, :titulocidade, :titulouf, :cnhnum, :cnhcat, :cnhvalidade, :om, :omanterior, :motivotransf, :localtrabalho, :turma, :tempoantano, :tempoantmes, :tempoantdia, :sexo, :religiao, :estadocivil, :tiposangue, :filpai, :filmae, :naturalcidade, :naturaluf, :endereco, :bairro, :numero, :cidade, :uf, :cep, :fone1, :fone2, :fonetrab, :fonetrabramal, :email, :funcao, :falert, :falertesquadrao, :escala, :livrobruxa, :comportamento, :banco, :agencia, :contacorrente, :obs, :tipo, :user, :datacadastro, :cracha, :turnotrabalho, :cmt, :escala1, :login, :secao, :escala_preta, :escala_vermelha, :escala_roxa, :escala_amarela, :mostra_niver, :cracha_id, :cracha_validade, :vilaa, :escala_receber_email, :esqsec_id, :ass_dispensa, :funcao_id)
    end
end
