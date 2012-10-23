# coding: utf-8

require 'spec_helper'

feature 'gerenciar Pessoa_fisica' do

  scenario 'incluir Pessoa_fisica' do #, :javascript => true do
    
    banco = FactoryGirl.create(:banco, :nome => 'Itau Unibanco', :observacoes => 'S.A.')
    agencia = FactoryGirl.create(:agencium, :numero_agencia => '123456', :endereco => 'Avenida Sete de Setembro, 130', :banco => banco)
    endereco = FactoryGirl.create(:endereco, :estrangeiro => 'false')
    conta = FactoryGirl.create(:contum, :numero_conta => '54321', :agencium => agencia)
    beneficiario = FactoryGirl.create(:beneficiario, :nome => 'Fulano de Tal', :contum => conta, :endereco => endereco)

    pessoafisica = FactoryGirl.create(:pessoafisica, :beneficiario => beneficiario)

    visit new_pessoafisica_path

    preencher_e_verificar_pessoafisica
  end

  scenario 'alterar Pessoa_fisica' do #, :javascript => true do

    banco = FactoryGirl.create(:banco, :nome => 'Itau Unibanco', :observacoes => 'S.A.')
    agencia = FactoryGirl.create(:agencium, :numero_agencia => '123456', :endereco => 'Avenida Sete de Setembro, 130', :banco => banco)
    endereco = FactoryGirl.create(:endereco, :estrangeiro => 'false')
    conta = FactoryGirl.create(:contum, :numero_conta => '54321', :agencium => agencia)
    beneficiario = FactoryGirl.create(:beneficiario, :nome => 'Fulano de Tal', :contum => conta, :endereco => endereco)

    pessoafisica = FactoryGirl.create(:pessoafisica, :beneficiario => beneficiario)

    visit edit_pessoafisica_path(pessoafisica)

    preencher_e_verificar_pessoafisica


  end

  scenario 'excluir Pessoa_fisica' do #, :javascript => true do

    banco = FactoryGirl.create(:banco, :nome => 'Itau Unibanco', :observacoes => 'S.A.')
    agencia = FactoryGirl.create(:agencium, :numero_agencia => '123456', :endereco => 'Avenida Sete de Setembro, 130', :banco => banco)
    endereco = FactoryGirl.create(:endereco, :estrangeiro => 'false')
    conta = FactoryGirl.create(:contum, :numero_conta => '54321', :agencium => agencia)
    beneficiario = FactoryGirl.create(:beneficiario, :nome => 'Fulano de Tal', :contum => conta, :endereco => endereco)

    pessoafisica = FactoryGirl.create(:pessoafisica, :beneficiario => beneficiario)

    visit pessoafisicas_path

    click_link 'Excluir'
    
    
  end



  def preencher_e_verificar_pessoafisica

    fill_in 'Cpf', :with => '12345678909'
    fill_in 'Documento', :with => '9987654321'
    
    select 'Fulano de Tal', :on => 'Beneficiario'
    
    click_button 'Salvar'

    page.should have_content 'CPF: 12345678909'
    page.should have_content 'Documento: 9987654321'
    page.should have_content 'Beneficiario: Fulano de Tal'
    
  end

      

end
