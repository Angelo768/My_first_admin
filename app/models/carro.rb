class Carro < ApplicationRecord
    belongs_to :aluguel, optional: true
end
