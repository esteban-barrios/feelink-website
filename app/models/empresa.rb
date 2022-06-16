class Empresa < ApplicationRecord

    def empleados
        User.where(empresa_id: self.id).where(encargado: false).all
    end

    def encargados
        User.where(empresa_id: self.id).where(encargado: true).all
    end
    
end
