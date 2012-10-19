# coding: utf-8

require 'spec_helper'

feature 'gerenciar banco' do

  scenario 'incluir Banco' do # , :javascript => true do

    visit new_banco_path

    preencher_e_verificar_banco

    

  end

  scenario 'alterar Banco' do #, :javascript => true do

    banco = FactoryGirl.create(:banco)

    visit edit_banco_path(banco)

    preencher_e_verificar_banco



  end

   scenario 'excluir Banco' do #, :javascript => true do

       banco = FactoryGirl.create(:banco)

        visit bancos_path

        click_link 'Excluir'

    

  end

   def preencher_e_verificar_banco

      	fill_in 'Nome', :with => 'Itau'
	fill_in 'Observacoes', :with => 'observacoes'

        
 
      click_button 'Salvar'

      	page.should have_content 'Nome: Itau'
	page.should have_content 'Observacoes: observacoes'

      

   end
end
