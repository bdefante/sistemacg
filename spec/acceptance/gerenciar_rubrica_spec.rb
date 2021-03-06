# coding: utf-8

require 'spec_helper'

feature 'gerenciar rubrica' do

  scenario 'incluir Rubrica' do #, :javascript => true do

    tabelageral = FactoryGirl.create(:tabelageral, :valor_entrada => 1500.0, :valor_saida => 1450.0, :ano => 2011)

    visit new_rubrica_path

    preencher_e_verificar_rubrica

    

  end

  scenario 'alterar Rubrica' do #, :javascript => true do

    tabelageral = FactoryGirl.create(:tabelageral, :valor_entrada => 1500.0, :valor_saida => 1450.0, :ano => 2011)

    rubrica = FactoryGirl.create(:rubrica, :tabelageral => tabelageral)

    visit edit_rubrica_path(rubrica)

    preencher_e_verificar_rubrica


  end

  scenario 'excluir Rubrica' do #, :javascript => true do

    tabelageral = FactoryGirl.create(:tabelageral, :valor_entrada => 1500.0, :valor_saida => 1450.0, :ano => 2011)

    rubrica = FactoryGirl.create(:rubrica, :tabelageral => tabelageral)

    visit rubricas_path

    click_link 'Excluir'
    
    
  end



  def preencher_e_verificar_rubrica

    fill_in 'Valor_entrada', :with => 150.0
    fill_in 'Valor_saida', :with => 145.0
    
    select '2011', :on => 'Tabelageral'
    
    click_button 'Salvar'
    page.should have_content 'Valor entrada: 150.0'
    page.should have_content 'Valor saida: 145.0'
    page.should have_content 'Tabela geral: 2011'
    
  end

      

end
