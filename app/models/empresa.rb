class Empresa < ApplicationRecord


    validates :nombre, presence: true
    validates :direccion, presence: true
    validates :comuna, presence: true
    validates :region, presence: true
    validates :rut, presence: false


    def empleados
        User.where(empresa_id: self.id).where(encargado: false).all
    end

    def encargados
        User.where(empresa_id: self.id).where(encargado: true).all
    end
    
end
