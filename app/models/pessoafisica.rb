class Pessoafisica < ActiveRecord::Base
  belongs_to :beneficiario
  attr_accessible :cpf, :documento, :beneficiario_id
end
