class ClickiesController < ApplicationController

  #->Prelang (scaffolding:rails/scope_to_user)
  before_filter :require_user_signed_in, only: [:new, :edit, :create, :update, :destroy]

  before_action :set_clicky, only: [:show, :edit, :update, :destroy]

  # GET /clickies
  # GET /clickies.json
  def index
    @clickies = Clicky.all
  end

  # GET /clickies/1
  # GET /clickies/1.json
  def show
  end

  # GET /clickies/new
  def new
    @clicky = Clicky.new
  end

  # GET /clickies/1/edit
  def edit
  end

  # POST /clickies
  # POST /clickies.json
  def create
    @clicky = Clicky.new(clicky_params)

    respond_to do |format|
      if @clicky.save
        format.html { redirect_to @clicky, notice: 'Clicky was successfully created.' }
        format.json { render action: 'show', status: :created, location: @clicky }
      else
        format.html { render action: 'new' }
        format.json { render json: @clicky.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /clickies/1
  # PATCH/PUT /clickies/1.json
  def update
    respond_to do |format|
      if @clicky.update(clicky_params)
        format.html { redirect_to @clicky, notice: 'Clicky was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @clicky.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /clickies/1
  # DELETE /clickies/1.json
  def destroy
    @clicky.destroy
    respond_to do |format|
      format.html { redirect_to clickies_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_clicky
      @clicky = Clicky.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def clicky_params
      params.require(:clicky).permit(:page_info_id, :clicky_id, :url, :banned_site_id)
    end
end
