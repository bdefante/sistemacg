# coding: utf-8

require 'spec_helper'

feature 'gerenciar tabelageral' do

  scenario 'incluir Tabelageral' do # , :javascript => true do

    visit new_tabelageral_path

    preencher_e_verificar_tabelageral

    

  end

  scenario 'alterar Tabelageral' do #, :javascript => true do

    tabelageral = FactoryGirl.create(:tabelageral)

    visit edit_tabelageral_path(tabelageral)

    preencher_e_verificar_tabelageral



  end

   scenario 'excluir Tabelageral' do #, :javascript => true do

       tabelageral = FactoryGirl.create(:tabelageral)

        visit tabelagerals_path

        click_link 'Excluir'

    

  end

   def preencher_e_verificar_tabelageral

      	fill_in 'Valor_entrada', :with => 1500.0
	fill_in 'Valor_saida', :with => 1000.0
	fill_in 'Ano', :with => 2011

        
 
      click_button 'Salvar'

      	page.should have_content 'Valor entrada: 1500.0'
	page.should have_content 'Valor saida: 1000.0'
	page.should have_content 'Ano: 2011'

      

   end
end
