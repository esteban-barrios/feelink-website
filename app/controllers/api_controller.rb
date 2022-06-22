class ApiController < ApplicationController

    def show_user

        @user = User.find(params[:id])
        @simulacion = @user.simulaciones_pendientes.first

        if @simulacion.nil?
            data = {}
        else
            data = {
                :id_simulacion => @simulacion.id,
                :nombre_simulacion => @simulacion.nombre,
                :id_usuario => @user.id,
                :nombre_usuario => @user.nombre,
                :apellido_usuario => @user.apellido,
            }
        end
        require 'json'
        render json: data.to_json
    end

    def simulacion_realizada
        @simulacion = Simulacion.find_by_id(params[:id])

        if @simulacion.nil?
            render json: -1
        else
            if @simulacion.realizada
                render json: 0
            else
                @simulacion.update(realizada: true)
                if @simulacion.save
                    render json: 1
                else
                    render json: 0
                end
            end
        end
    end
end
