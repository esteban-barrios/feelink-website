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
        encuestas_iniciales = []
        self.empleados.each do |empleado|
            encuestas_iniciales << empleado.encuesta_inicial
        end
        
        if !encuestas_iniciales.nil?

            cant_encuestas = encuestas_iniciales.length()

            suma = 0
            encuestas_iniciales.each do |encuesta|
                suma += encuesta.porcentaje_bueno
            end

            promedio = suma/cant_encuestas

        end
    end
    
end
