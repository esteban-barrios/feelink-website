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



end
