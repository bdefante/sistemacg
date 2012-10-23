class Gasto < ActiveRecord::Base
  belongs_to :rubrica
  belongs_to :beneficiario
  attr_accessible :data, :observacoes, :valor, :rubrica_id, :beneficiario_id
end
