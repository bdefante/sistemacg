# coding: utf-8

require 'spec_helper'

feature 'gerenciar UF' do

  scenario 'incluir UF' do #, :javascript => true do

    visit new_uf_path

    preencher_e_verificar_uf
  end

  scenario 'alterar UF' do #, :javascript => true do

    uf = FactoryGirl.create(:uf)

    visit edit_uf_path(uf)

    preencher_e_verificar_uf


  end

  scenario 'excluir UF' do #, :javascript => true do

    uf = FactoryGirl.create(:uf)

    visit ufs_path

    click_link 'Excluir'
    
    
  end



  def preencher_e_verificar_uf

    fill_in 'Sigla', :with => 'RJ'
    fill_in 'Nome', :with => 'Rio de Janeiro'
    
    click_button 'Salvar'
    page.should have_content 'Sigla: RJ'
    page.should have_content 'Nome: Rio de Janeiro'
    
  end

      

end
