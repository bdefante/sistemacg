# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :agencium do
    numero_agencia "MyString"
    endereco "MyString"
    banco nil
  end
end
