# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :gasto do
    data "MyString"
    valor 1.5
    observacoes "MyString"
    rubrica nil
    beneficiario nil
  end
end
