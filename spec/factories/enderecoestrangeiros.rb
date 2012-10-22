# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :enderecoestrangeiro do
    identificacao_residencial "MyString"
    identificacao_local "MyString"
    identificacao_regional "MyString"
    pai nil
    endereco nil
  end
end
