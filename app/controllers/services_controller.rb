class ServicesController < ApplicationController
  respond_to :html, :json
  before_action :set_service, only: [:show, :edit, :update, :destroy]
  before_filter :authenticate_admin!, except: [:wax_men, :wax_women, :wax_brow, :facials, :chemical_peels, :advanced_treatment, :spray_tan, :show_specials, :microblading]
  
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

  def search
    search_string = params[:search_string].strip
    @found_services = Service.fuzzy_search(search_string)
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
  def wax_brows
       @wax_men = Service.where(:service_type => 'Wax-Brows')
       render '/services/wax-brows'
  end

  def wax_men
       @wax_men = Service.where(:service_type => 'Wax-Men')
       render '/services/wax-men'
  end

  def wax_women
       @wax_women = Service.where(:service_type => 'Wax-Women')
       render '/services/wax-women'
  end


  def facials
       @facials = Service.where(:service_type => 'Signature Facials')
       render '/services/facials'
  end

  def chemical_peels
       @chemical_peels = Service.where(:service_type => 'Corrective Peels')
       render '/services/corrective-peels'
  end

  def advanced_treatment
       @advanced_treatment = Service.where(:service_type => 'Advanced Treatment')
       render '/services/advanced-treatment'
  end

  def spray_tan
       @tan_services = Service.where(:service_type => 'Sunless Tan')
       render '/services/sunless-tans'
  end

   def microblading
       @microblading = Service.where(:service_type => 'Microblading')
       render '/services/microblading'
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
