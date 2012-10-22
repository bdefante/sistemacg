class CreateEnderecobrasileiros < ActiveRecord::Migration
  def change
    create_table :enderecobrasileiros do |t|
      t.string :nome_logradouro
      t.string :numero
      t.string :complemento
      t.string :caixa_postal
      t.string :bairro
      t.string :cep
      t.references :municipio
      t.references :endereco

      t.timestamps
    end
    add_index :enderecobrasileiros, :municipio_id
    add_index :enderecobrasileiros, :endereco_id
  end
end
