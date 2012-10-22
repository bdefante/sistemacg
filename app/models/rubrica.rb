class Rubrica < ActiveRecord::Base
  belongs_to :tabelageral
  attr_accessible :valor_entrada, :valor_saida, :tabelageral_id
end
