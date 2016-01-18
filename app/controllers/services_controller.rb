class ServicesController < ApplicationController
  respond_to :html, :json
  before_action :set_service, only: [:show, :edit, :update, :destroy]
  # before_action :authenticate_user!, except: [:wax_men_face, :wax_men_bikini, :wax_men_body, :wax_men_packages, :wax_women_face, :wax_women_bikini, :wax_women_brow, :wax_women_body, :wax_women_packages, :organic_facials, :chemical_peels, :advanced_treatment, :specials, :spray_tan]
  # GET /services
  # GET /services.json
  def index
    @services = Service.all
  end

  # GET /services/1
  # GET /services/1.json
  def show
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
    # respond_with @service

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

  #Render each service page
  def wax_men_face
       @wax_men_face = Service.where(:service_type => 'Wax-Men-Face')
       render '/services/wax-men-face'
  end

  def wax_men_body
       @wax_men_body = Service.where(:service_type => 'Wax-Men-Body')
       render '/services/wax-men-body'
  end

  def wax_men_bikini
       @wax_men_bikini = Service.where(:service_type => 'Wax-Men-Bikini')
       render '/services/wax-men-bikini'
  end

  def wax_men_packages
       @wax_men_packages = Service.where(:service_type => 'Wax-Men-Packages')
       render '/services/wax-men-packages'
  end

  def wax_women_face
       @wax_women_face = Service.where(:service_type => 'Wax-Women-Face')
       render '/services/wax-women-face'
  end

  def wax_women_bikini
       @wax_women_bikini = Service.where(:service_type => 'Wax-Women-Bikini')
       render '/services/wax-women-bikini'
  end

  def wax_women_brow
       @wax_women_brow = Service.where(:service_type => 'Wax-Women-Brow')
       render '/services/wax-women-brow'
  end

  def wax_women_body
       @wax_women_body = Service.where(:service_type => 'Wax-Women-Body')
       render '/services/wax-women-body'
  end

  def wax_women_packages
       @wax_women_packages = Service.where(:service_type => 'Wax-Women-Packages')
       render '/services/wax-women-packages'
  end

  def organic_facials
       @organic_facials = Service.where(:service_type => 'Organic Facials')
       render '/services/organic-facials'
  end

  def chemical_peels
       @chemical_peels = Service.where(:service_type => 'Chemical Peels')
       render '/services/chemical-peels'
  end

  def advanced_treatment
       @advanced_treatment = Service.where(:service_type => 'Advanced Treatment')
       render '/services/advanced-treatment'
  end

  def spray_tan
       @tan_services = Service.where(:service_type => 'Spray Tan')
       render '/services/spray-tans'
  end

  def specials
       @specials = Service.where(:service_type => 'Special')
       render '/services/specials'
  end
  #Finish rendering each service page

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
     @service = Service.where(:service_type => 'Special').sample
     respond_to do |format|
       format.json { render :show, status: :ok, location: @service }
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
