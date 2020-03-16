class LaboralrelationsController < ApplicationController
  before_action :set_laboralrelation, only: [:show, :edit, :update, :destroy]

  # GET /laboralrelations
  # GET /laboralrelations.json
  def index
    @laboralrelations = Laboralrelation.all
  end

  # GET /laboralrelations/1
  # GET /laboralrelations/1.json
  def show
  end

  # GET /laboralrelations/new
  def new
    @employee = Employee.find(params[:employee_id])
    @laboralrelation = Laboralrelation.new
    @afp = Afp.pluck(:name,:id)
    @salud = Health.pluck(:name,:id)
    
  end

  # GET /laboralrelations/1/edit
  def edit
  end

  # POST /laboralrelations
  # POST /laboralrelations.json
  def create
    @laboralrelation = Laboralrelation.new(laboralrelation_params)
    @laboralrelation.employee = Employee.find(params[:employee_id])
    
    respond_to do |format|
      if @laboralrelation.save
        format.html { redirect_to @laboralrelation, notice: 'Laboralrelation was successfully created.' }
        format.json { render :show, status: :created, location: @laboralrelation }
      else
        format.html { redirect_to new_employee_laboralrelation_path, notice: @laboralrelation.errors}
        format.json { render json: @laboralrelation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /laboralrelations/1
  # PATCH/PUT /laboralrelations/1.json
  def update
    respond_to do |format|
      if @laboralrelation.update(laboralrelation_params)
        format.html { redirect_to @laboralrelation, notice: 'Laboralrelation was successfully updated.' }
        format.json { render :show, status: :ok, location: @laboralrelation }
      else
        format.html { render :edit }
        format.json { render json: @laboralrelation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /laboralrelations/1
  # DELETE /laboralrelations/1.json
  def destroy
    @laboralrelation.destroy
    respond_to do |format|
      format.html { redirect_to laboralrelations_url, notice: 'Laboralrelation was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_laboralrelation
      @laboralrelation = Laboralrelation.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def laboralrelation_params
      params.require(:laboralrelation).permit(:undefined, :date_ini, :date_finish, :base_salary, :status, :employee_id, :afp_id, :health_id)
    end
end
