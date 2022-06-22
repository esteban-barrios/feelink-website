class EncuestaInicial < ApplicationRecord

    def cant_preguntas_buenas
        buenas = 0
        if self.pregunta1 == true
            buenas += 1
        end
        if self.pregunta2 == true
            buenas += 1
        end
        if self.pregunta3 == true
            buenas += 1
        end
        if self.pregunta4 == true
            buenas += 1
        end
        if self.pregunta5 == true
            buenas += 1
        end
        if self.pregunta6 == true
            buenas += 1
        end
        buenas
    end

    def porcentaje_bueno
        self.cant_preguntas_buenas * 100 / 6
    end
end
