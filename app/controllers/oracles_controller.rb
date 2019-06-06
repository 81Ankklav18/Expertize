class OraclesController < ApplicationController
  before_action :set_oracle, only: [:show, :edit, :update, :destroy]

  # GET /oracles
  # GET /oracles.json
  def index
    @oracles = Oracle.all
  end

  # GET /oracles/1
  # GET /oracles/1.json
  def show
  end

  # GET /oracles/new
  def new
    @oracle = Oracle.new
  end

  # GET /oracles/1/edit
  def edit
  end

  # POST /oracles
  # POST /oracles.json
  def create
    @oracle = Oracle.new(oracle_params)

    respond_to do |format|
      if @oracle.save
        format.html { redirect_to @oracle, notice: 'Oracle was successfully created.' }
        format.json { render :show, status: :created, location: @oracle }
      else
        format.html { render :new }
        format.json { render json: @oracle.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /oracles/1
  # PATCH/PUT /oracles/1.json
  def update
    respond_to do |format|
      if @oracle.update(oracle_params)
        format.html { redirect_to @oracle, notice: 'Oracle was successfully updated.' }
        format.json { render :show, status: :ok, location: @oracle }
      else
        format.html { render :edit }
        format.json { render json: @oracle.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /oracles/1
  # DELETE /oracles/1.json
  def destroy
    @oracle.destroy
    respond_to do |format|
      format.html { redirect_to oracles_url, notice: 'Oracle was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_oracle
      @oracle = Oracle.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def oracle_params
      params.require(:oracle).permit(:name, :email)
    end
end
