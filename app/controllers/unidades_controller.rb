class UnidadesController < ApplicationController
  before_action :set_unidad, only: [:show, :edit, :update, :destroy, :agregarCarrera]

  # GET /unidades
  # GET /unidades.json
  def index
    @unidades = Unidad.all
  end

  # GET /unidades/1
  # GET /unidades/1.json
  def show
  end

  # GET /unidades/new
  def new
    @unidad = Unidad.new
  end

  # GET /unidades/1/edit
  def edit
  end

  # POST /unidades
  # POST /unidades.json
  def create
    @unidad = Unidad.new(unidad_params)

    respond_to do |format|
      if @unidad.save
        format.html { redirect_to @unidad, notice: 'Unidad was successfully created.' }
        format.json { render :show, status: :created, location: @unidad }
      else
        format.html { render :new }
        format.json { render json: @unidad.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /unidades/1
  # PATCH/PUT /unidades/1.json
  def update
    respond_to do |format|
      if @unidad.update(unidad_params)
        format.html { redirect_to @unidad, notice: 'Unidad was successfully updated.' }
        format.json { render :show, status: :ok, location: @unidad }
      else
        format.html { render :edit }
        format.json { render json: @unidad.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /unidades/1
  # DELETE /unidades/1.json
  def destroy
    @unidad.destroy
    respond_to do |format|
      format.html { redirect_to unidades_url, notice: 'Unidad was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
  def agregarCarrera
    if params[:carrera_id]
      @carrera = Carrera.find(params[:carrera_id])
      @unidad.carreras << @carrera
    end
  end
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_unidad
      @unidad = Unidad.find_by_siglas(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def unidad_params
      params.require(:unidad).permit(:nombre, :siglas, :descripcion, :direccion, :telefono, :extension, :email, :web, :escudo, :portada, :token)
    end
end
