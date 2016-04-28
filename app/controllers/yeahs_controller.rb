class YeahsController < ApplicationController
  before_action :set_yeah, only: [:show, :edit, :update, :destroy]

  # GET /yeahs
  # GET /yeahs.json
  def index
    @yeahs = Yeah.all
  end

  # GET /yeahs/1
  # GET /yeahs/1.json
  def show
  end

  # GET /yeahs/new
  def new
    @yeah = Yeah.new
  end

  # GET /yeahs/1/edit
  def edit
  end

  # POST /yeahs
  # POST /yeahs.json
  def create
    @yeah = Yeah.new(yeah_params)

    respond_to do |format|
      if @yeah.save
        format.html { redirect_to @yeah, notice: 'Yeah was successfully created.' }
        format.json { render :show, status: :created, location: @yeah }
      else
        format.html { render :new }
        format.json { render json: @yeah.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /yeahs/1
  # PATCH/PUT /yeahs/1.json
  def update
    respond_to do |format|
      if @yeah.update(yeah_params)
        format.html { redirect_to @yeah, notice: 'Yeah was successfully updated.' }
        format.json { render :show, status: :ok, location: @yeah }
      else
        format.html { render :edit }
        format.json { render json: @yeah.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /yeahs/1
  # DELETE /yeahs/1.json
  def destroy
    @yeah.destroy
    respond_to do |format|
      format.html { redirect_to yeahs_url, notice: 'Yeah was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_yeah
      @yeah = Yeah.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def yeah_params
      params.require(:yeah).permit(:wtf)
    end
end
