class GateIpsController < ApplicationController
  before_action :set_gate_ip, only: [:show, :edit, :update, :destroy]

  # GET /gate_ips
  # GET /gate_ips.json
  def index
    @gate_ips = GateIp.all
  end

  # GET /gate_ips/1
  # GET /gate_ips/1.json
  def show
  end

  # GET /gate_ips/new
  def new
    @gate_ip = GateIp.new
  end

  # GET /gate_ips/1/edit
  def edit
  end

  # POST /gate_ips
  # POST /gate_ips.json
  def create
    @gate_ip = GateIp.new(gate_ip_params)

    respond_to do |format|
      if @gate_ip.save
        format.html { redirect_to @gate_ip, notice: 'Gate ip was successfully created.' }
        format.json { render :show, status: :created, location: @gate_ip }
      else
        format.html { render :new }
        format.json { render json: @gate_ip.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /gate_ips/1
  # PATCH/PUT /gate_ips/1.json
  def update
    respond_to do |format|
      if @gate_ip.update(gate_ip_params)
        format.html { redirect_to @gate_ip, notice: 'Gate ip was successfully updated.' }
        format.json { render :show, status: :ok, location: @gate_ip }
      else
        format.html { render :edit }
        format.json { render json: @gate_ip.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /gate_ips/1
  # DELETE /gate_ips/1.json
  def destroy
    @gate_ip.destroy
    respond_to do |format|
      format.html { redirect_to gate_ips_url, notice: 'Gate ip was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_gate_ip
      @gate_ip = GateIp.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def gate_ip_params
      params.require(:gate_ip).permit(:portao_ip, :portao_biga, :portao_nome, :portao_id)
    end
end
