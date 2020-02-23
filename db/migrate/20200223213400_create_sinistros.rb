class CreateSinistros < ActiveRecord::Migration[5.2]
  def change
    create_table :sinistros do |t|
      t.decimal :preco
      t.boolean :status
      t.integer :tipo
      t.text :descrição
      t.integer :aluguel_id

      t.timestamps
    end
  end
end
