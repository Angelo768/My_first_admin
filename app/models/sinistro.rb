class Sinistro < ApplicationRecord
  belongs_to :aluguel, optional: true
end
