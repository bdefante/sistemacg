# coding: utf-8

require 'spec_helper'

feature 'gerenciar Telefone' do

  scenario 'incluir Telefone' do #, :javascript => true do
    
    banco = FactoryGirl.create(:banco, :nome => 'Itau Unibanco', :observacoes => 'S.A.')
    agencia = FactoryGirl.create(:agencium, :numero_agencia => '123456', :endereco => 'Avenida Sete de Setembro, 130', :banco => banco)
    endereco = FactoryGirl.create(:endereco, :estrangeiro => 'false')
    conta = FactoryGirl.create(:contum, :numero_conta => '54321', :agencium => agencia)
    beneficiario = FactoryGirl.create(:beneficiario, :nome => 'Fulano de Tal', :contum => conta, :endereco => endereco)

    telefone = FactoryGirl.create(:telefone, :beneficiario => beneficiario)

    visit new_telefone_path

    preencher_e_verificar_telefone
  end

  scenario 'alterar Telefone' do #, :javascript => true do

    banco = FactoryGirl.create(:banco, :nome => 'Itau Unibanco', :observacoes => 'S.A.')
    agencia = FactoryGirl.create(:agencium, :numero_agencia => '123456', :endereco => 'Avenida Sete de Setembro, 130', :banco => banco)
    endereco = FactoryGirl.create(:endereco, :estrangeiro => 'false')
    conta = FactoryGirl.create(:contum, :numero_conta => '54321', :agencium => agencia)
    beneficiario = FactoryGirl.create(:beneficiario, :nome => 'Fulano de Tal', :contum => conta, :endereco => endereco)

    telefone = FactoryGirl.create(:telefone, :beneficiario => beneficiario)

    visit edit_telefone_path(telefone)

    preencher_e_verificar_telefone


  end

  scenario 'excluir Telefone' do #, :javascript => true do

    banco = FactoryGirl.create(:banco, :nome => 'Itau Unibanco', :observacoes => 'S.A.')
    agencia = FactoryGirl.create(:agencium, :numero_agencia => '123456', :endereco => 'Avenida Sete de Setembro, 130', :banco => banco)
    endereco = FactoryGirl.create(:endereco, :estrangeiro => 'false')
    conta = FactoryGirl.create(:contum, :numero_conta => '54321', :agencium => agencia)
    beneficiario = FactoryGirl.create(:beneficiario, :nome => 'Fulano de Tal', :contum => conta, :endereco => endereco)

    telefone = FactoryGirl.create(:telefone, :beneficiario => beneficiario)

    visit telefones_path

    click_link 'Excluir'
    
    
  end



  def preencher_e_verificar_telefone

    fill_in 'Tipo', :with => 'Residencial'
    fill_in 'Numero', :with => '27222222'
    fill_in 'Codigo_area', :with => '22'
    fill_in 'Ramal', :with => '0'
    
    select 'Fulano de Tal', :on => 'Beneficiario'
    
    click_button 'Salvar'

    page.should have_content 'Tipo: Residencial'
    page.should have_content 'Numero: 27222222'
    page.should have_content 'Codigo area: 22'
    page.should have_content 'Ramal: 0'
    page.should have_content 'Beneficiario: Fulano de Tal'
    
  end

      

end
