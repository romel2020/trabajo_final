class CusstomersController < ApplicationController
  before_action :set_cusstomer, only: [:show, :edit, :update, :destroy]

  # GET /cusstomers
  # GET /cusstomers.json
  def index
    @cusstomers = Cusstomer.all
  end

  # GET /cusstomers/1
  # GET /cusstomers/1.json
  def show
  end

  # GET /cusstomers/new
  def new
    @cusstomer = Cusstomer.new
  end

  # GET /cusstomers/1/edit
  def edit
  end

  # POST /cusstomers
  # POST /cusstomers.json
  def create
    @cusstomer = Cusstomer.new(cusstomer_params)

    respond_to do |format|
      if @cusstomer.save
        format.html { redirect_to @cusstomer, notice: 'Cusstomer was successfully created.' }
        format.json { render :show, status: :created, location: @cusstomer }
      else
        format.html { render :new }
        format.json { render json: @cusstomer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cusstomers/1
  # PATCH/PUT /cusstomers/1.json
  def update
    respond_to do |format|
      if @cusstomer.update(cusstomer_params)
        format.html { redirect_to @cusstomer, notice: 'Cusstomer was successfully updated.' }
        format.json { render :show, status: :ok, location: @cusstomer }
      else
        format.html { render :edit }
        format.json { render json: @cusstomer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cusstomers/1
  # DELETE /cusstomers/1.json
  def destroy
    @cusstomer.destroy
    respond_to do |format|
      format.html { redirect_to cusstomers_url, notice: 'Cusstomer was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cusstomer
      @cusstomer = Cusstomer.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def cusstomer_params
      params.require(:cusstomer).permit(:rut, :name, :last_name, :phone, :email, :profile, :compañy_size, :doc_month, :help_you)
    end
end
