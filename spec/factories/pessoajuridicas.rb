# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :pessoajuridica do
    cnpj "MyString"
    observacoes "MyString"
    beneficiario nil
  end
end
