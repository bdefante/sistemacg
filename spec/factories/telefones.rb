# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :telefone do
    tipo "MyString"
    numero "MyString"
    codigo_area "MyString"
    ramal "MyString"
    beneficiario nil
  end
end
