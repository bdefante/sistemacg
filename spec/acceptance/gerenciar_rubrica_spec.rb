# coding: utf-8

require 'spec_helper'

feature 'gerenciar rubrica' do

  scenario 'incluir Rubrica' do # , :javascript => true do

    visit new_rubrica_path

    preencher_e_verificar_rubrica

    

  end

  scenario 'alterar Rubrica' do #, :javascript => true do

    tabelageral = FactoryGirl.create(:rubrica)

    visit edit_rubrica_path(rubrica)

    preencher_e_verificar_rubrica



  end

   scenario 'excluir Rubrica' do #, :javascript => true do

       tabelageral = FactoryGirl.create(:rubrica)

        visit rubricas_path

        click_link 'Excluir'

    

  end

   def preencher_e_verificar_tabelageral

      	fill_in 'Valor_entrada', :with => 1500.0
	fill_in 'Valor_saida', :with => 1000.0
	fill_in 'Tabela_geral', :with => 2011

        
 
      click_button 'Salvar'

      	page.should have_content 'Valor entrada: 1500.0'
	page.should have_content 'Valor saida: 1000.0'
	page.should have_content 'Ano: 2011'

      

   end
end
