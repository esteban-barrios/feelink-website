class UsersController < ApplicationController
    before_action :authenticate_user!
    load_and_authorize_resource

    def show
        @user = User.find(params[:id])
    end

    def edit
        @user = User.find(params[:id])
    end

    def update
        @user = User.find(params[:id])
        @user.update(create_params)

        if @user.save
            flash[:notice] = "Usuario modificado con exito"
            redirect_to show_user_path
        else
            flash[:alert] = @user.errors.full_messages
            redirect_to edit_user_path
        end
    end

    def destroy
        @user = User.find(params[:id])
        empresa = Empresa.find(@user.empresa_id)
        name = @user.nombre
        if @user.destroy
            flash[:notice] = "#{name} se ha eliminado con exito"
            redirect_to empresa_path(empresa.id)
        else
            flash[:alert] = "No se pudo eliminar #{name}"
            redirect_to show_user_path
        end
    end

    private

    def create_params
        params.require(:user).permit(:nombre, :email, :apellido, :telefono, :encargado, :password, :password_confirmation)
      end
end
