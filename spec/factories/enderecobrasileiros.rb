# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :enderecobrasileiro do
    nome_logradouro "MyString"
    numero "MyString"
    complemento "MyString"
    caixa_postal "MyString"
    bairro "MyString"
    cep "MyString"
    municipio nil
    endereco nil
  end
end
