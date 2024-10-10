class PropertiesController < ApplicationController
  before_action :set_property, only: %i[ show edit update destroy ]
  before_action :set_property_units, only: %i[ property_units ]

  # GET /properties or /properties.json
  def index
    @properties = Property.all
  end

  # GET /properties/1 or /properties/1.json
  def show
    ollama_service = OllamaService.new

    property_details = {
      address: @property.address,
      city: @property.city,
      state: @property.state,
      units: @property.units
    }

    @description = ollama_service.generate_property_description(property_details)
    # @image_url = ollama_service.generate_property_image(property_details)

    respond_to do |format|
      format.html { render :show }
      format.json { render json: { description: @description, image_url: @image_url } }
    end
  end

  # GET /properties/new
  def new
    @property = Property.new
  end

  # GET /properties/1/edit
  def edit
  end

  # POST /properties or /properties.json
  def create
    @property = Property.new(property_params)

    respond_to do |format|
      if @property.save
        format.html { redirect_to @property, notice: "Property was successfully created." }
        format.json { render :show, status: :created, location: @property }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @property.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /properties/1 or /properties/1.json
  def update
    respond_to do |format|
      if @property.update(property_params)
        format.html { redirect_to @property, notice: "Property was successfully updated." }
        format.json { render :show, status: :ok, location: @property }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @property.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /properties/1 or /properties/1.json
  def destroy
    @property.destroy!

    respond_to do |format|
      format.html { redirect_to properties_path, status: :see_other, notice: "Property was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  # GET /property_units or /property_units.json
  def property_units
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_property
      @property = Property.includes(:units).find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def property_params
    params.require(:property).permit(:address, :city, :state)
  end
end
