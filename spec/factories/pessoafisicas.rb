# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :pessoafisica do
    cpf "MyString"
    documento "MyString"
    beneficiario nil
  end
end
