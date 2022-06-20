class Simulacion < ApplicationRecord

    belongs_to :user, foreign_key: "user_id"

    validates :nombre, presence: true
    validates :realizada, presence: false
end
