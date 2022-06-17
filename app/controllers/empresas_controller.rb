class EmpresasController < ApplicationController
    def def new
        @empresa = Empresa.new()
    end
    
    def create
        @empresa = Empresa.new(create_params)
        
        if @empresa.save
            flash[:notice] = "#{@empresa.nombre} ha sido creada con exito"
            redirect_to empresas_path
        else
            flash[:alert] = @empresa.errors.full_messages
            redirect_to new_empresa_path
        end
    end

    def index
        @empresas = Empresa.all
    end

    def show
        @empresa = Empresa.find(params[:id])
    end

    def agregar_usuario
        @empresa = Empresa.find(params[:id])
        @user = User.new()
    end

    def crear_usuario
        @empresa_id = params[:id]
        @user = User.new(user_create_params)
        @user.empresa_id = params[:id]
        if @user.save
            flash[:notice] = "#{@user.nombre} #{@user.apellido} ha sido añadido con exito"
        else
            flash[:alert] = @user.errors.full_messages
            
        end
        redirect_to agregar_usuario_empresa_path
    end

    private

    def create_params
      params.require(:empresa).permit(:nombre, :direccion, :comuna, :oficina, :region)
    end

    def user_create_params
        params.require(:user).permit(:nombre, :email, :apellido, :telefono, :encargado, :password, :password_confirmation)
      end
end
