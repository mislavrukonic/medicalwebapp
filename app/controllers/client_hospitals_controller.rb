class ClientHospitalsController < ApplicationController
  before_action :set_client_hospital, only: %i[ show edit update destroy ]

  # GET /client_hospitals or /client_hospitals.json
  def index
    @client_hospitals = ClientHospital.all
  end

  # GET /client_hospitals/1 or /client_hospitals/1.json
  def show
  end

  # GET /client_hospitals/new
  def new
    @client_hospital = ClientHospital.new
  end

  # GET /client_hospitals/1/edit
  def edit
  end

  # POST /client_hospitals or /client_hospitals.json
  def create
    @client_hospital = ClientHospital.new(client_hospital_params)

    respond_to do |format|
      if @client_hospital.save
        format.html { redirect_to client_hospital_url(@client_hospital), notice: "Client hospital was successfully created." }
        format.json { render :show, status: :created, location: @client_hospital }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @client_hospital.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /client_hospitals/1 or /client_hospitals/1.json
  def update
    respond_to do |format|
      if @client_hospital.update(client_hospital_params)
        format.html { redirect_to client_hospital_url(@client_hospital), notice: "Client hospital was successfully updated." }
        format.json { render :show, status: :ok, location: @client_hospital }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @client_hospital.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /client_hospitals/1 or /client_hospitals/1.json
  def destroy
    @client_hospital.destroy

    respond_to do |format|
      format.html { redirect_to client_hospitals_url, notice: "Client hospital was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_client_hospital
      @client_hospital = ClientHospital.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def client_hospital_params
      params.require(:client_hospital).permit(:doctor_id, :patient_id)
    end
end
