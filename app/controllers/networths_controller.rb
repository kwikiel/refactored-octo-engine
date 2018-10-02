class NetworthsController < ApplicationController
  before_action :set_networth, only: [:show, :edit, :update, :destroy]

  # GET /networths
  # GET /networths.json
  def index
    @networths = Networth.all
  end

  # GET /networths/1
  # GET /networths/1.json
  def show
  end

  # GET /networths/new
  def new
    @networth = Networth.new
  end

  # GET /networths/1/edit
  def edit
  end

  # POST /networths
  # POST /networths.json
  def create
    @networth = Networth.new(networth_params)

    respond_to do |format|
      if @networth.save
        format.html { redirect_to @networth, notice: 'Networth was successfully created.' }
        format.json { render :show, status: :created, location: @networth }
      else
        format.html { render :new }
        format.json { render json: @networth.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /networths/1
  # PATCH/PUT /networths/1.json
  def update
    respond_to do |format|
      if @networth.update(networth_params)
        format.html { redirect_to @networth, notice: 'Networth was successfully updated.' }
        format.json { render :show, status: :ok, location: @networth }
      else
        format.html { render :edit }
        format.json { render json: @networth.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /networths/1
  # DELETE /networths/1.json
  def destroy
    @networth.destroy
    respond_to do |format|
      format.html { redirect_to networths_url, notice: 'Networth was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_networth
      @networth = Networth.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def networth_params
      params.require(:networth).permit(:value, :date)
    end
end
