class Enderecobrasileiro < ActiveRecord::Base
  belongs_to :municipio
  belongs_to :endereco
  attr_accessible :bairro, :caixa_postal, :cep, :complemento, :nome_logradouro, :numero, :municipio_id, :uf_id, :endereco_id
end
