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
        @simulacion = @simulacion = Simulacion.find(params[:id])
        @simulacion.update(realizada: true)

        if @simulacion.save
            data = {
                :realizada => "true"
            }
        else
            data = {
                :realizada => "false"
            }
        end
        require 'json'
        render json: data.to_json
    end
end
