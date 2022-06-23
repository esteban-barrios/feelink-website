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
                encuestas_finales << empleado.encuesta_final unless empleado.encuesta_final.nil?
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

    def tendencia_decisiones
        contador0 = 0
        contador1 = 0
        contador2 = 0

        self.empleados.each do |empleado|
            if empleado.has_simulacion?
                if !empleado.simulaciones.first.decisiones.nil?
                    case empleado.simulaciones.first.decisiones
                    when 0
                        contador0 += 1
                    when 1
                        contador1 += 1
                    when 2
                        contador2 += 1
                    else
                    end
                end
            end
        end

        contadores = [contador0, contador1, contador2]
        contadores.find_index(contadores.max)
        
    end
    
end
