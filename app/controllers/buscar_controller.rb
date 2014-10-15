class BuscarController < ApplicationController
  def index
  end

  def unidades
  end

  def carrerasJSON
    query = params[:q].capitalize
    acentos = {"á" => "a", "é" => "e", "í" => "i", "ó" => "o", "ú" => "u"}
    acentos.each do |k,v|
      query.gsub!(k,"_")
    end
    @carreras= Carrera.select("id, nombre").where("nombre LIKE ?", "%#{query}%").limit(20)
    @hash = []
    @carreras.each do |carrera|
      @hash <<  "#{carrera.nombre}"
    end
    render :json => @hash
  end

  def materias
  end

  def profesores
  end

  def terminos
  end
end
