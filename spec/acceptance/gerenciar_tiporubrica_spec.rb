# coding: utf-8

require 'spec_helper'

feature 'gerenciar tiporubrica' do

  scenario 'incluir Tiporubrica' do # , :javascript => true do

    visit new_tiporubrica_path

    preencher_e_verificar_tiporubrica

    

  end

  scenario 'alterar Tiporubrica' do #, :javascript => true do

    tiporubrica = FactoryGirl.create(:tiporubrica)

    visit edit_tiporubrica_path(tiporubrica)

    preencher_e_verificar_tiporubrica



  end

   scenario 'excluir Tiporubrica' do #, :javascript => true do

       tiporubrica = FactoryGirl.create(:tiporubrica)

        visit tiporubricas_path

        click_link 'Excluir'

    

  end

   def preencher_e_verificar_tiporubrica

      fill_in 'Definicao', :with => "passagem"

        
 
      click_button 'Salvar'

      page.should have_content 'Definicao: passagem'

      

   end
end
