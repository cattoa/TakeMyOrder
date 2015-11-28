class MenuItemOptionsController < ApplicationController
  before_action :set_menu_item_option, only: [:show, :edit, :update, :destroy]

  # GET /menu_item_options
  # GET /menu_item_options.json
  def index
    @menu_item_options = MenuItemOption.all
  end

  # GET /menu_item_options/1
  # GET /menu_item_options/1.json
  def show
  end

  # GET /menu_item_options/new
  def new
    @menu_item_option = MenuItemOption.new
  end

  # GET /menu_item_options/1/edit
  def edit
  end

  # POST /menu_item_options
  # POST /menu_item_options.json
  def create
    @menu_item_option = MenuItemOption.new(menu_item_option_params)

    respond_to do |format|
      if @menu_item_option.save
        format.html { redirect_to @menu_item_option, notice: 'Menu item option was successfully created.' }
        format.json { render :show, status: :created, location: @menu_item_option }
      else
        format.html { render :new }
        format.json { render json: @menu_item_option.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /menu_item_options/1
  # PATCH/PUT /menu_item_options/1.json
  def update
    respond_to do |format|
      if @menu_item_option.update(menu_item_option_params)
        format.html { redirect_to @menu_item_option, notice: 'Menu item option was successfully updated.' }
        format.json { render :show, status: :ok, location: @menu_item_option }
      else
        format.html { render :edit }
        format.json { render json: @menu_item_option.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /menu_item_options/1
  # DELETE /menu_item_options/1.json
  def destroy
    @menu_item_option.destroy
    respond_to do |format|
      format.html { redirect_to menu_item_options_url, notice: 'Menu item option was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_menu_item_option
      @menu_item_option = MenuItemOption.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def menu_item_option_params
      params.require(:menu_item_option).permit(:code, :name, :description)
    end
end
