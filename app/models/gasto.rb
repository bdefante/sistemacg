class Gasto < ActiveRecord::Base
  belongs_to :rubrica
  belongs_to :beneficiario
  attr_accessible :data, :observacoes, :valor
end
