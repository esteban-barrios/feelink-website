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
            flash[:alert] = @user.errors.full_messages.join(', ')
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

    def encuesta_inicial
        @user = User.find(params[:user_id])
        if @user.encuesta_inicial?
            flash[:alert] = "Ya has realizado la encuesta inicial"
            redirect_to show_user_path(@user.id)
        end
        @encuesta = EncuestaInicial.new()
    end

    def submit_encuesta_inicial
        @user = User.find(params[:user_id])
        if @user.encuesta_inicial?
            flash[:alert] = "Ya has realizado la encuesta inicial"
            redirect_to show_user_path(@user.id)
        end
        @encuesta = EncuestaInicial.new(encuesta_inicial_create_params)
        @encuesta.update(user_id: params[:user_id])

        if @encuesta.save
            flash[:notice] = "Encuesta completada con exito"
            redirect_to show_user_path(params[:user_id])
        else
            flash[:alert] = @encuesta.errors.full_messages.join(', ')
        end
    end

    def encuesta_final
        @user = User.find(params[:user_id])
        if @user.encuesta_final?
            flash[:alert] = "Ya has realizado la encuesta inicial"
            redirect_to show_user_path(@user.id)
        end
        @encuesta = EncuestaInicial.new()
    end

    def submit_encuesta_final
        @user = User.find(params[:user_id])
        if @user.encuesta_final?
            flash[:alert] = "Ya has realizado la encuesta final"
            redirect_to show_user_path(@user.id)
        end
        @encuesta = EncuestaFinal.new(encuesta_final_create_params)
        @encuesta.update(user_id: params[:user_id])

        if @encuesta.save
            flash[:notice] = "Encuesta completada con exito"
            redirect_to show_user_path(params[:user_id])
        else
            flash[:alert] = @encuesta.errors.full_messages.join(', ')
        end
    end

    private

    def create_params
        params.require(:user).permit(:nombre, :email, :apellido, :telefono, :encargado, :password, :password_confirmation)
      end

    def encuesta_inicial_create_params
        if params.has_key?(:encuesta_inicial)
            params.fetch(:encuesta_inicial)
            .permit(:pregunta1, :pregunta2, :pregunta3, :pregunta4, :pregunta5, :pregunta6)
        end
    end

    def encuesta_final_create_params
        if params.has_key?(:encuesta_final)
            params.fetch(:encuesta_final)
            .permit(:pregunta1, :pregunta2, :pregunta3, :pregunta4)
        end
      end
end
