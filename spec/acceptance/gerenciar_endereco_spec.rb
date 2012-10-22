# coding: utf-8

require 'spec_helper'

feature 'gerenciar Endereco' do

  scenario 'incluir Endereco' do # , :javascript => true do

    visit new_endereco_path

    preencher_e_verificar_endereco

    

  end

  scenario 'alterar Endereco' do #, :javascript => true do

    endereco = FactoryGirl.create(:endereco)

    visit edit_endereco_path(endereco)

    preencher_e_verificar_endereco



  end

   scenario 'excluir Endereco' do #, :javascript => true do

       endereco = FactoryGirl.create(:endereco)

        visit enderecos_path

        click_link 'Excluir'

    

  end

   def preencher_e_verificar_endereco

      	fill_in 'Estrangeiro', :with => false
        
 
      click_button 'Salvar'

      	page.should have_content 'Estrangeiro: false"

      

   end
end
