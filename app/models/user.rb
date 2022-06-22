class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  belongs_to :empresa, class_name: "empresa", foreign_key: "empresa_id", optional: true
  
  validates :nombre, presence: true
  validates :apellido, presence: true
  validates :telefono, presence: true, numericality: { only_integer: true}, length: {minimum:9, maximum:9}
  validates :encargado, presence: false
  validates :admin, presence: false

  def simulaciones
    Simulacion.where(user_id: self.id).all
  end

  def simulaciones_realizadas
    Simulacion.where(user_id: self.id).where(realizada: true).all
  end

  def simulaciones_pendientes
    Simulacion.where(user_id: self.id).where(realizada: false).all
  end

  def empresa
    Empresa.find(self.empresa_id)
  end
  
  def encuesta_inicial
    EncuestaInicial.find_by(user_id: self.id)
  end

  def encuesta_inicial?
    if self.encuesta_inicial.nil?
      false
    else
      true
    end
  end
end
