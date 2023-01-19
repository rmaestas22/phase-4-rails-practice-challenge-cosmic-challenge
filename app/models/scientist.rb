class Scientist < ApplicationRecord
    has_many :missions, dependent: :destroy
    has_many :planets, through: :mission

    validates :namen uniqueness: true
    validates :name, :field_of_study, presence: true
end
