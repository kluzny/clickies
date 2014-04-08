class BannedSitesController < ApplicationController
  before_action :set_banned_site, only: [:show, :edit, :update, :destroy]

  # GET /banned_sites
  # GET /banned_sites.json
  def index
    @banned_sites = BannedSite.all
  end

  # GET /banned_sites/1
  # GET /banned_sites/1.json
  def show
  end

  # GET /banned_sites/new
  def new
    @banned_site = BannedSite.new
  end

  # GET /banned_sites/1/edit
  def edit
  end

  # POST /banned_sites
  # POST /banned_sites.json
  def create
    @banned_site = BannedSite.new(banned_site_params)

    respond_to do |format|
      if @banned_site.save
        format.html { redirect_to @banned_site, notice: 'Banned site was successfully created.' }
        format.json { render action: 'show', status: :created, location: @banned_site }
      else
        format.html { render action: 'new' }
        format.json { render json: @banned_site.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /banned_sites/1
  # PATCH/PUT /banned_sites/1.json
  def update
    respond_to do |format|
      if @banned_site.update(banned_site_params)
        format.html { redirect_to @banned_site, notice: 'Banned site was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @banned_site.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /banned_sites/1
  # DELETE /banned_sites/1.json
  def destroy
    @banned_site.destroy
    respond_to do |format|
      format.html { redirect_to banned_sites_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_banned_site
      @banned_site = BannedSite.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def banned_site_params
      params.require(:banned_site).permit(:banned_on, :domain, :reason)
    end
end
