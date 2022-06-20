class ApiController < ApplicationController

    def show_user

        @user = User.find(params[:id])
        @simulacion = @user.simulaciones_pendientes.first

        if @simulacion.nil?
            data = "nada"
        else
            data = 
            "{
                'id_simulacion': #{@simulacion.id},
                'nombre_simulacion': #{@simulacion.nombre},
                'id_usuario': #{@user.id},
                'nombre_usuario': #{@user.nombre},
                'apellido_usuario': #{@user.apellido}
            }
            "
        end

        render json: data
    end

    def simulacion_realizada
        @simulacion = @simulacion = Simulacion.find(params[:id])
        @simulacion.update(realizada: true)

        if @simulacion.save
            render json: 1
        else
            render json: 0
        end
    end
end
