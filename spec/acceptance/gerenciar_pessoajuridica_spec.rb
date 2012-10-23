# coding: utf-8

require 'spec_helper'

feature 'gerenciar Pessoa_juridica' do

  scenario 'incluir Pessoa_juridica' do #, :javascript => true do
    
    banco = FactoryGirl.create(:banco, :nome => 'Itau Unibanco', :observacoes => 'S.A.')
    agencia = FactoryGirl.create(:agencium, :numero_agencia => '123456', :endereco => 'Avenida Sete de Setembro, 130', :banco => banco)
    endereco = FactoryGirl.create(:endereco, :estrangeiro => 'false')
    conta = FactoryGirl.create(:contum, :numero_conta => '54321', :agencium => agencia)
    beneficiario = FactoryGirl.create(:beneficiario, :nome => 'Fulano de Tal', :contum => conta, :endereco => endereco)

    pessoajuridica = FactoryGirl.create(:pessoajuridica, :beneficiario => beneficiario)

    visit new_pessoajuridica_path

    preencher_e_verificar_pessoajuridica
  end

  scenario 'alterar Pessoa_juridica' do #, :javascript => true do

    banco = FactoryGirl.create(:banco, :nome => 'Itau Unibanco', :observacoes => 'S.A.')
    agencia = FactoryGirl.create(:agencium, :numero_agencia => '123456', :endereco => 'Avenida Sete de Setembro, 130', :banco => banco)
    endereco = FactoryGirl.create(:endereco, :estrangeiro => 'false')
    conta = FactoryGirl.create(:contum, :numero_conta => '54321', :agencium => agencia)
    beneficiario = FactoryGirl.create(:beneficiario, :nome => 'Fulano de Tal', :contum => conta, :endereco => endereco)

    pessoajuridica = FactoryGirl.create(:pessoajuridica, :beneficiario => beneficiario)

    visit edit_pessoajuridica_path(pessoajuridica)

    preencher_e_verificar_pessoajuridica


  end

  scenario 'excluir Pessoa_juridica' do #, :javascript => true do

    banco = FactoryGirl.create(:banco, :nome => 'Itau Unibanco', :observacoes => 'S.A.')
    agencia = FactoryGirl.create(:agencium, :numero_agencia => '123456', :endereco => 'Avenida Sete de Setembro, 130', :banco => banco)
    endereco = FactoryGirl.create(:endereco, :estrangeiro => 'false')
    conta = FactoryGirl.create(:contum, :numero_conta => '54321', :agencium => agencia)
    beneficiario = FactoryGirl.create(:beneficiario, :nome => 'Fulano de Tal', :contum => conta, :endereco => endereco)

    pessoajuridica = FactoryGirl.create(:pessoajuridica, :beneficiario => beneficiario)

    visit pessoajuridicas_path

    click_link 'Excluir'
    
    
  end



  def preencher_e_verificar_pessoajuridica

    fill_in 'Cnpj', :with => '12345678909'
    fill_in 'Observacoes', :with => 'Observacoes'
    
    select 'Fulano de Tal', :on => 'Beneficiario'
    
    click_button 'Salvar'

    page.should have_content 'CNPJ: 12345678909'
    page.should have_content 'Observacoes: Observacoes'
    page.should have_content 'Beneficiario: Fulano de Tal'
    
  end

      

end
