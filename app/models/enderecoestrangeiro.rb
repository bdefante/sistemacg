class Enderecoestrangeiro < ActiveRecord::Base
  belongs_to :pai
  belongs_to :endereco
  attr_accessible :identificacao_local, :identificacao_regional, :identificacao_residencial, :pai_id, :endereco_id
end
