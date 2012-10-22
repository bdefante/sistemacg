class Agencium < ActiveRecord::Base
  belongs_to :banco
  attr_accessible :endereco, :numero_agencia, :banco_id
end
