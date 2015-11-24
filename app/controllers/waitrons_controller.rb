class WaitronsController < ApplicationController
  before_action :set_waitron, only: [:show, :edit, :update, :destroy]

  # GET /waitrons
  # GET /waitrons.json
  def index
    @waitrons = Waitron.all
  end

  # GET /waitrons/1
  # GET /waitrons/1.json
  def show
  end

  # GET /waitrons/new
  def new
    @waitron = Waitron.new
  end

  # GET /waitrons/1/edit
  def edit
  end

  # POST /waitrons
  # POST /waitrons.json
  def create
    @waitron = Waitron.new(waitron_params)

    respond_to do |format|
      if @waitron.save
        format.html { redirect_to @waitron, notice: 'Waitron was successfully created.' }
        format.json { render :show, status: :created, location: @waitron }
      else
        format.html { render :new }
        format.json { render json: @waitron.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /waitrons/1
  # PATCH/PUT /waitrons/1.json
  def update
    respond_to do |format|
      if @waitron.update(waitron_params)
        format.html { redirect_to @waitron, notice: 'Waitron was successfully updated.' }
        format.json { render :show, status: :ok, location: @waitron }
      else
        format.html { render :edit }
        format.json { render json: @waitron.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /waitrons/1
  # DELETE /waitrons/1.json
  def destroy
    @waitron.destroy
    respond_to do |format|
      format.html { redirect_to waitrons_url, notice: 'Waitron was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_waitron
      @waitron = Waitron.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def waitron_params
      params.require(:waitron).permit(:logon, :name, :surname, :mobile)
    end
end
