# coding: utf-8

require 'spec_helper'

feature 'gerenciar Beneficiario' do

  scenario 'incluir Beneficiario' do #, :javascript => true do
    banco = FactoryGirl.create(:banco, :nome => 'Itau Unibanco', :observacoes => 'S.A.')
    agencia = FactoryGirl.create(:agencium, :numero_agencia => '123456', :endereco => 'Avenida Sete de Setembro, 130', :banco => banco)

    endereco = FactoryGirl.create(:endereco, :estrangeiro => 'false')
    conta = FactoryGirl.create(:contum, :numero_conta => '54321', :agencium => agencia)

    visit new_beneficiario_path

    preencher_e_verificar_beneficiario
  end

  scenario 'alterar Beneficiario' do #, :javascript => true do

    banco = FactoryGirl.create(:banco, :nome => 'Itau Unibanco', :observacoes => 'S.A.')
    agencia = FactoryGirl.create(:agencium, :numero_agencia => '123456', :endereco => 'Avenida Sete de Setembro, 130', :banco => banco)

    endereco = FactoryGirl.create(:endereco, :estrangeiro => 'false')
    conta = FactoryGirl.create(:contum, :numero_conta => '54321', :agencium => agencia)
    beneficiario = FactoryGirl.create(:beneficiario, :contum => conta, :endereco => endereco)

    visit edit_beneficiario_path(beneficiario)

    preencher_e_verificar_beneficiario


  end

  scenario 'excluir Beneficiario' do #, :javascript => true do

    banco = FactoryGirl.create(:banco, :nome => 'Itau Unibanco', :observacoes => 'S.A.')
    agencia = FactoryGirl.create(:agencium, :numero_agencia => '123456', :endereco => 'Avenida Sete de Setembro, 130', :banco => banco)

    endereco = FactoryGirl.create(:endereco, :estrangeiro => 'false')
    conta = FactoryGirl.create(:contum, :numero_conta => '54321', :agencium => agencia)

    beneficiario = FactoryGirl.create(:beneficiario, :contum => conta, :endereco => endereco)

    visit beneficiarios_path

    click_link 'Excluir'
    
    
  end



  def preencher_e_verificar_beneficiario

    fill_in 'Nome', :with => 'Fulano de Tal'
    
    select '54321', :on => 'Conta'
    select 'false', :on => 'Estrangeiro'
    
    click_button 'Salvar'

    page.should have_content 'Nome: Fulano de Tal'
    page.should have_content 'Conta: 54321'
    page.should have_content 'Estrangeiro: false'
    
  end

      

end
