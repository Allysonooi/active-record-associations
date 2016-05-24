class PlusrsController < ApplicationController
  before_action :set_plusr, only: [:show, :edit, :update, :destroy]

  # GET /plusrs
  # GET /plusrs.json
  def index
    @plusrs = Plusr.all
  end

  # GET /plusrs/1
  # GET /plusrs/1.json
  def show
  end

  # GET /plusrs/new
  def new
    @plusr = Plusr.new
  end

  # GET /plusrs/1/edit
  def edit
  end

  # POST /plusrs
  # POST /plusrs.json
  def create
    @plusr = Plusr.new(plusr_params)

    respond_to do |format|
      if @plusr.save
        format.html { redirect_to @plusr, notice: 'Plusr was successfully created.' }
        format.json { render :show, status: :created, location: @plusr }
      else
        format.html { render :new }
        format.json { render json: @plusr.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /plusrs/1
  # PATCH/PUT /plusrs/1.json
  def update
    respond_to do |format|
      if @plusr.update(plusr_params)
        format.html { redirect_to @plusr, notice: 'Plusr was successfully updated.' }
        format.json { render :show, status: :ok, location: @plusr }
      else
        format.html { render :edit }
        format.json { render json: @plusr.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /plusrs/1
  # DELETE /plusrs/1.json
  def destroy
    @plusr.destroy
    respond_to do |format|
      format.html { redirect_to plusrs_url, notice: 'Plusr was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_plusr
      @plusr = Plusr.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def plusr_params
      params.require(:plusr).permit(:plan_id, :user_id)
    end
end
