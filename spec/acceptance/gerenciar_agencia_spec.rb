# coding: utf-8

require 'spec_helper'

feature 'gerenciar Agencia' do

  scenario 'incluir Agencia' do #, :javascript => true do

    banco = FactoryGirl.create(:banco, :nome => 'Itau Unibanco', :observacoes => 'S.A.')

    visit new_agencium_path

    preencher_e_verificar_agencia
  end

  scenario 'alterar Agencia' do #, :javascript => true do

    banco = FactoryGirl.create(:banco, :nome => 'Itau Unibanco', :observacoes => 'S.A.')

    agencia = FactoryGirl.create(:agencium, :banco => banco)

    visit edit_agencium_path(agencia)

    preencher_e_verificar_agencia


  end

  scenario 'excluir Agencia' do #, :javascript => true do

    banco = FactoryGirl.create(:banco, :nome => 'Itau Unibanco', :observacoes => 'S.A.')

    agencia = FactoryGirl.create(:agencium, :banco => banco)

    visit agencia_path

    click_link 'Excluir'
    
    
  end



  def preencher_e_verificar_agencia

    fill_in 'Numero_agencia', :with => '123456'
    fill_in 'Endereco', :with => 'Avenida Sete de Setembro, 130'
    
    select 'Itau Unibanco', :on => 'Banco'
    
    click_button 'Salvar'
    page.should have_content 'Numero agencia: 123456'
    page.should have_content 'Endereco: Avenida Sete de Setembro, 130'
    page.should have_content 'Banco: Itau Unibanco'
    
  end

      

end
