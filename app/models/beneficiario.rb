class Beneficiario < ActiveRecord::Base
  belongs_to :contum
  belongs_to :endereco
  attr_accessible :nome, :contum_id, :endereco_id
end
