# coding: utf-8

require 'spec_helper'

feature 'gerenciar Pai' do

  scenario 'incluir Pai' do # , :javascript => true do

    visit new_pai_path

    preencher_e_verificar_pai

    

  end

  scenario 'alterar Pai' do #, :javascript => true do

    pai = FactoryGirl.create(:pai)

    visit edit_pai_path(pai)

    preencher_e_verificar_pai



  end

   scenario 'excluir Pai' do #, :javascript => true do

       banco = FactoryGirl.create(:pai)

        visit pais_path

        click_link 'Excluir'

    

  end

   def preencher_e_verificar_pai

      	fill_in 'Nome', :with => 'Brasil'
	fill_in 'Nacionalidade', :with => 'brasileiro'

        
 
      click_button 'Salvar'

      	page.should have_content 'Nome: Brasil'
	page.should have_content 'Nacionalidade: brasileiro'

      

   end
end
