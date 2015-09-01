class PostoGraduacaosController < ApplicationController
  before_action :set_posto_graduacao, only: [:show, :edit, :update, :destroy]

  # GET /posto_graduacaos
  # GET /posto_graduacaos.json
  def index
    @posto_graduacaos = PostoGraduacao.all
  end

  # GET /posto_graduacaos/1
  # GET /posto_graduacaos/1.json
  def show
  end

  # GET /posto_graduacaos/new
  def new
    @posto_graduacao = PostoGraduacao.new
  end

  # GET /posto_graduacaos/1/edit
  def edit
  end

  # POST /posto_graduacaos
  # POST /posto_graduacaos.json
  def create
    @posto_graduacao = PostoGraduacao.new(posto_graduacao_params)

    respond_to do |format|
      if @posto_graduacao.save
        format.html { redirect_to @posto_graduacao, notice: 'Posto graduacao was successfully created.' }
        format.json { render :show, status: :created, location: @posto_graduacao }
      else
        format.html { render :new }
        format.json { render json: @posto_graduacao.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /posto_graduacaos/1
  # PATCH/PUT /posto_graduacaos/1.json
  def update
    respond_to do |format|
      if @posto_graduacao.update(posto_graduacao_params)
        format.html { redirect_to @posto_graduacao, notice: 'Posto graduacao was successfully updated.' }
        format.json { render :show, status: :ok, location: @posto_graduacao }
      else
        format.html { render :edit }
        format.json { render json: @posto_graduacao.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /posto_graduacaos/1
  # DELETE /posto_graduacaos/1.json
  def destroy
    @posto_graduacao.destroy
    respond_to do |format|
      format.html { redirect_to posto_graduacaos_url, notice: 'Posto graduacao was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_posto_graduacao
      @posto_graduacao = PostoGraduacao.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def posto_graduacao_params
      params.require(:posto_graduacao).permit(:name)
    end
end
