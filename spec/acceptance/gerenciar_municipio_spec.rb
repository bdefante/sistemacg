# coding: utf-8

require 'spec_helper'

feature 'gerenciar Municipio' do

  scenario 'incluir Municipio' do #, :javascript => true do

    uf = FactoryGirl.create(:uf, :sigla => 'RJ', :nome => 'Rio de Janeiro')

    visit new_municipio_path

    preencher_e_verificar_municipio
  end

  scenario 'alterar Municipio' do #, :javascript => true do

    uf = FactoryGirl.create(:uf, :sigla => 'RJ', :nome => 'Rio de Janeiro')

    municipio = FactoryGirl.create(:municipio, :uf => uf)

    visit edit_municipio_path(municipio)

    preencher_e_verificar_municipio


  end

  scenario 'excluir Municipio' do #, :javascript => true do

    uf = FactoryGirl.create(:uf, :sigla => 'RJ', :nome => 'Rio de Janeiro')

    municipio = FactoryGirl.create(:municipio, :uf => uf)

    visit municipios_path

    click_link 'Excluir'
    
    
  end



  def preencher_e_verificar_municipio

    fill_in 'Nome', :with => 'Campos dos Goytacazes'
    
    select 'RJ', :on => 'Uf'
    
    click_button 'Salvar'
    page.should have_content 'Nome: Campos dos Goytacazes'
    page.should have_content 'UF: RJ'
    
  end

      

end
