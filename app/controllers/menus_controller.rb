class MenusController < ApplicationController
  before_action :set_menu, only: [:edit, :update, :destroy ]

  before_filter :check_for_cancel_or_add, :only => [:create, :update]

  def check_for_cancel_or_add
    if params[:cancel] == 'Cancel'
      redirect_to menus_path
    end
  end

  # GET /menus
  # GET /menus.json
  def index
    @menus = Menu.all
  end

  # GET /menus/1
  # GET /menus/1.json
  def show
    redirect_to menus_path
  end

  # GET /menus/new
  def new
    @menu = Menu.new
  end

  # GET /menus/1/edit
  def edit
  end

  # POST /menus
  # POST /menus.json
  def create
    @menu = Menu.new(menu_params)

    respond_to do |format|
      if @menu.save
        format.html { redirect_to @menu, notice: 'Menu was successfully created.'}
        format.json { render :edit, status: :created, location: @menu }
      else
        format.html { render :new }
        format.json { render json: @menu.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /menus/1
  # PATCH/PUT /menus/1.json
  def update
    respond_to do |format|
      if @menu.update(menu_params)
        format.html { redirect_to @menu, notice: 'Menu was successfully updated.' }
        format.json { render :index, status: :ok, location: @menu }
      else
        format.html { render :edit }
        format.json { render json: @menu.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /menus/1
  # DELETE /menus/1.json
  def destroy
    @menu.destroy
    respond_to do |format|
      format.html { redirect_to menus_url, notice: 'Menu was successfully deleted.' }
      format.json { head :no_content }
    end
  end

  # DELETE /menus/1
  # DELETE /menus/1.json
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_menu
      @menu = Menu.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def menu_params
      params.require(:menu).permit(:name, :date_from, :date_to, :description, menu_items_attributes:[:id, :order, :code, :name, :description, :price, :_destroy, menu_item_options:[:id,:code, :name, :description, :_destroy]])
    end
end
