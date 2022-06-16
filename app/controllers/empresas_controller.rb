class EmpresasController < ApplicationController
    def def new
        @empresa = Empresa.new()
    end
    
    def create
        @empresa = Empresa.new(create_params)
        if @empresa.save
            flash[:notice] = "#{@empresa.nombre} ha sido creada con exito"
            redirect_to root_path
        end
    end

    def index
        @empresas = Empresa.all
    end

    private

    def create_params
      params.require(:empresa).permit(:nombre, :direccion, :comuna, :oficina, :region)
    end
end
