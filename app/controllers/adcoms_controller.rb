class AdcomsController < ApplicationController
  before_action :set_adcom, only: [:show, :edit, :update, :destroy]

  # GET /adcoms
  # GET /adcoms.json
  def index
    @adcoms = Adcom.all
  end

  # GET /adcoms/1
  # GET /adcoms/1.json
  def show
  end

  # GET /adcoms/new
  def new
    @adcom = Adcom.new
  end

  # GET /adcoms/1/edit
  def edit
  end

  # POST /adcoms
  # POST /adcoms.json
  def create
    @adcom = Adcom.new(adcom_params)

    respond_to do |format|
      if @adcom.save
        format.html { redirect_to @adcom, notice: 'Adcom was successfully created.' }
        format.json { render :show, status: :created, location: @adcom }
      else
        format.html { render :new }
        format.json { render json: @adcom.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /adcoms/1
  # PATCH/PUT /adcoms/1.json
  def update
    respond_to do |format|
      if @adcom.update(adcom_params)
        format.html { redirect_to @adcom, notice: 'Adcom was successfully updated.' }
        format.json { render :show, status: :ok, location: @adcom }
      else
        format.html { render :edit }
        format.json { render json: @adcom.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /adcoms/1
  # DELETE /adcoms/1.json
  def destroy
    @adcom.destroy
    respond_to do |format|
      format.html { redirect_to adcoms_url, notice: 'Adcom was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_adcom
      @adcom = Adcom.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def adcom_params
      params.require(:adcom).permit(:admin_id, :company_id)
    end
end
