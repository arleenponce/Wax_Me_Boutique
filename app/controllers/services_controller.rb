class ServicesController < ApplicationController
  respond_to :html, :json
  before_action :set_service, only: [:show, :edit, :update, :destroy]
  # before_action :authenticate_user!, except: [:show]
  # GET /services
  # GET /services.json
  def index
    @services = Service.all
  end

  # GET /services/1
  # GET /services/1.json
  def show
  end

  def skin_care
       @skin_services = Service.where(:service_type => 'Skin Care')
       render '/services/skin-care'
  end

  def waxing
       @wax_services = Service.where(:service_type => 'Waxing')
       render '/services/waxing'
  end

  def spray_tan
       @tan_services = Service.where(:service_type => 'Spray Tan')
       render '/services/spray-tans'
  end

  def specials
       @specials = Service.where(:service_type => 'Specials')
       render '/services/specials'
  end


  def new
    @service = Service.new
  end

  # GET /services/1/edit
  def edit
  end

  # POST /services
  # POST /services.json
  def create
    @service = Service.new(service_params)
    respond_with @service

    respond_to do |format|
      if @service.save
        format.html { redirect_to @service, notice: 'Service was successfully created.' }
        format.json { render :show, status: :created, location: @service }
      else
        format.html { render :new }
        format.json { render json: @service.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /services/1
  # PATCH/PUT /services/1.json
  def update
    respond_to do |format|
      if @service.update(service_params)
        format.html { redirect_to @service, notice: 'Service was successfully updated.' }
        format.json { render :show, status: :ok, location: @service }
      else
        format.html { render :edit }
        format.json { render json: @service.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /services/1
  # DELETE /services/1.json
  def destroy
    @service.destroy
    respond_to do |format|
      format.html { redirect_to services_url, notice: 'Service was successfully destroyed.' }
      format.json { head :no_content }
    end

    
  end

  def show_specials
    @special = Service.all.sample
    respond_to do |format|
    format.json { render :show, status: :ok, location: @special }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_service
      @service = Service.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def service_params
      params.require(:service).permit(:service_name, :cost, :time, :description, :service_type)
    end
end
