class HostInfosController < ApplicationController
  before_action :set_host_info, only: [:show, :edit, :update, :destroy]

  # GET /host_infos
  # GET /host_infos.json
  def index
    @host_infos = HostInfo.all
  end

  # GET /host_infos/1
  # GET /host_infos/1.json
  def show
  end

  # GET /host_infos/new
  def new
    @host_info = HostInfo.new
  end

  # GET /host_infos/1/edit
  def edit
  end

  # POST /host_infos
  # POST /host_infos.json
  def create
    @host_info = HostInfo.new(host_info_params)

    respond_to do |format|
      if @host_info.save
        format.html { redirect_to @host_info, notice: 'Host info was successfully created.' }
        format.json { render action: 'show', status: :created, location: @host_info }
      else
        format.html { render action: 'new' }
        format.json { render json: @host_info.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /host_infos/1
  # PATCH/PUT /host_infos/1.json
  def update
    respond_to do |format|
      if @host_info.update(host_info_params)
        format.html { redirect_to @host_info, notice: 'Host info was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @host_info.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /host_infos/1
  # DELETE /host_infos/1.json
  def destroy
    @host_info.destroy
    respond_to do |format|
      format.html { redirect_to host_infos_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_host_info
      @host_info = HostInfo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def host_info_params
      params.require(:host_info).permit(:clicky_id, :ip, :domain, :status, :ping, :blacklisted, :blacklisted_on, :checked_at)
    end
end
