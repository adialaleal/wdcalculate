class CalsController < ApplicationController
  before_action :set_cal, only: [:show, :edit, :update, :destroy]

  # GET /cals
  # GET /cals.json
  def index
    @cals = Cal.all
  end

  # GET /cals/1
  # GET /cals/1.json
  def show
  end

  # GET /cals/new
  def new
    @cal = Cal.new
  end

  # GET /cals/1/edit
  def edit
  end

  # POST /cals
  # POST /cals.json
  def create
    @cal = Cal.new(cal_params)

    respond_to do |format|
      if @cal.save
        format.html { redirect_to @cal, notice: 'Cal was successfully created.' }
        format.json { render :show, status: :created, location: @cal }
      else
        format.html { render :new }
        format.json { render json: @cal.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cals/1
  # PATCH/PUT /cals/1.json
  def update
    respond_to do |format|
      if @cal.update(cal_params)
        format.html { redirect_to @cal, notice: 'Cal was successfully updated.' }
        format.json { render :show, status: :ok, location: @cal }
      else
        format.html { render :edit }
        format.json { render json: @cal.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cals/1
  # DELETE /cals/1.json
  def destroy
    @cal.destroy
    respond_to do |format|
      format.html { redirect_to cals_url, notice: 'Cal was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cal
      @cal = Cal.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cal_params
      params.require(:cal).permit(:ryieldi, :ryielde, :prodi, :prode, :cprice)
    end
end
