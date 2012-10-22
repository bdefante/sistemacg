class Contum < ActiveRecord::Base
  belongs_to :agencium
  attr_accessible :numero_conta, :agencium_id
end
