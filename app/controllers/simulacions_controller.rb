class SimulacionsController < ApplicationController

    def new
        @user = User.find(params[:user_id])
    end
    def create
        @user = User.find(params[:user_id])
        @simulacion = Simulacion.new(create_params)
        @simulacion.update(user_id: params[:user_id], realizada: false)

        if @simulacion.save
            flash[:notice] = "Simulación de #{@simulacion.nombre} asignada con exito"
            
            data = 
            "{
                'id_simulacion': #{@simulacion.id},
                'nombre_simulacion': #{@simulacion.nombre},
                'id_usuario': #{@user.id},
                'nombre_usuario': #{@user.nombre},
                'apellido_usuario': #{@user.apellido}
            }
            "
            
            redirect_to show_user_path(params[:user_id])

        else
            flash[:alert] = @simulacion.errors.full_messages.join(", ")
        end
    end

    def destroy
        @simulacion = Simulacion.find(params[:user_id])
        if @simulacion.destroy
            flash[:notice] = "Simulación de #{@simulacion.nombre} eliminada con exito"
        else
            flash[:alert] = @simulacion.errors.full_messages.join(", ")
        end
        redirect_to show_user_path(params[:id])
    end

    def marcar_realizada
        @simulacion = @simulacion = Simulacion.find(params[:simulacion_id])
        @simulacion.update(realizada: true)

        if @simulacion.save
            flash[:notice] = "Simulación de #{@simulacion.nombre} realizada"
        else
            flash[:alert] = @simulacion.errors.full_messages.join(", ")
        end
        redirect_to show_user_path(params[:user_id])
    end

    private

    def create_params
      params.require(:simulacion).permit(:nombre)
    end

end
