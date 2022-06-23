class Empresa < ApplicationRecord


    validates :nombre, presence: true
    validates :direccion, presence: true
    validates :comuna, presence: true
    validates :region, presence: true
    validates :rut, presence: false

    has_many :users, dependent: :destroy

    def empleados
        User.where(empresa_id: self.id).where(encargado: false).all
    end

    def encargados
        User.where(empresa_id: self.id).where(encargado: true).all
    end

    def promedio_encuesta_inicial
        promedio = 0
        encuestas_iniciales = []
        self.empleados.each do |empleado|
            if empleado.encuesta_inicial?
                encuestas_iniciales << empleado.encuesta_inicial
            end
        end
        if !encuestas_iniciales.empty?
            cant_encuestas = encuestas_iniciales.length()
            suma = 0
            encuestas_iniciales.each do |encuesta|
                suma += encuesta.porcentaje_bueno
            end
            promedio = suma/cant_encuestas
        else
            -1
        end
    end

    def promedio_encuesta_final
        promedio = 0
        encuestas_finales = []
        self.empleados.each do |empleado|
            if empleado.encuesta_inicial?
                encuestas_finales << empleado.encuesta_final
            end
        end
        if !encuestas_finales.empty?
            cant_encuestas = encuestas_finales.length()
            suma = 0
            encuestas_finales.each do |encuesta|
                suma += encuesta.porcentaje_bueno
            end
            promedio = suma/cant_encuestas
        else
            -1
        end
    end
    
end
