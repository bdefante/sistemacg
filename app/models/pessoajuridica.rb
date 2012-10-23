class Pessoajuridica < ActiveRecord::Base
  belongs_to :beneficiario
  attr_accessible :cnpj, :observacoes, :beneficiario_id
end
