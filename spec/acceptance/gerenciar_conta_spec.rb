# coding: utf-8

require 'spec_helper'

feature 'gerenciar Conta' do

  scenario 'incluir Conta' do #, :javascript => true do

    banco = FactoryGirl.create(:banco, :nome => 'Itau Unibanco', :observacoes => 'S.A.')
    agencia = FactoryGirl.create(:agencium, :numero_agencia => '123456', :endereco => 'Avenida Sete de Setembro, 130', :banco => banco)

    visit new_contum_path

    preencher_e_verificar_conta
  end

  scenario 'alterar Conta' do #, :javascript => true do

    banco = FactoryGirl.create(:banco, :nome => 'Itau Unibanco', :observacoes => 'S.A.')
    agencia = FactoryGirl.create(:agencium, :numero_agencia => '123456', :endereco => 'Avenida Sete de Setembro, 130', :banco => banco)

    conta = FactoryGirl.create(:contum, :agencium => agencia)

    visit edit_contum_path(conta)

    preencher_e_verificar_conta


  end

  scenario 'excluir Conta' do #, :javascript => true do

    banco = FactoryGirl.create(:banco, :nome => 'Itau Unibanco', :observacoes => 'S.A.')
    agencia = FactoryGirl.create(:agencium, :numero_agencia => '123456', :endereco => 'Avenida Sete de Setembro, 130', :banco => banco)

    conta = FactoryGirl.create(:contum, :agencium => agencia)

    visit conta_path

    click_link 'Excluir'
    
    
  end



  def preencher_e_verificar_conta

    fill_in 'Numero_conta', :with => '54321'
    
    select '123456', :on => 'Agencia'
    
    click_button 'Salvar'
    page.should have_content 'Numero conta: 54321'
    page.should have_content 'Agencia: 123456'
    
  end

      

end
