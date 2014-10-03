class ProfesoresController < ApplicationController
  before_action :set_profesor, only: [:show, :edit, :update, :destroy]

  # GET /profesores
  # GET /profesores.json
  def index
    @profesores = Profesor.all
  end

  # GET /profesores/1
  # GET /profesores/1.json
  def show
  end

  # GET /profesores/new
  def new
    @profesor = Profesor.new
  end

  # GET /profesores/1/edit
  def edit
  end

  # POST /profesores
  # POST /profesores.json
  def create
    @profesor = Profesor.new(profesor_params)

    respond_to do |format|
      if @profesor.save
        format.html { redirect_to @profesor, notice: 'Profesor was successfully created.' }
        format.json { render :show, status: :created, location: @profesor }
      else
        format.html { render :new }
        format.json { render json: @profesor.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /profesores/1
  # PATCH/PUT /profesores/1.json
  def update
    respond_to do |format|
      if @profesor.update(profesor_params)
        format.html { redirect_to @profesor, notice: 'Profesor was successfully updated.' }
        format.json { render :show, status: :ok, location: @profesor }
      else
        format.html { render :edit }
        format.json { render json: @profesor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /profesores/1
  # DELETE /profesores/1.json
  def destroy
    @profesor.destroy
    respond_to do |format|
      format.html { redirect_to profesores_url, notice: 'Profesor was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_profesor
      @profesor = Profesor.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def profesor_params
      params.require(:profesor).permit(:nombres, :apellidos, :url, :email, :sexo, :token)
    end
end
