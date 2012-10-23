class Telefone < ActiveRecord::Base
  belongs_to :beneficiario
  attr_accessible :codigo_area, :numero, :ramal, :tipo, :beneficiario_id
end
