# coding: utf-8

require 'spec_helper'

feature 'gerenciar Endereco_estrangeiro' do

  scenario 'incluir Endereco_estrangeiro' do #, :javascript => true do

    pais = FactoryGirl.create(:pai, :nome => 'Cuba', :nacionalidade => 'Cubano')
    endereco = FactoryGirl.create(:endereco, :estrangeiro => 'true')

    visit new_enderecoestrangeiro_path

    preencher_e_verificar_enderecoestrangeiro
  end

  scenario 'alterar Endereco_estrangeiro' do #, :javascript => true do

    pais = FactoryGirl.create(:pai, :nome => 'Cuba', :nacionalidade => 'Cubano')
    endereco = FactoryGirl.create(:endereco, :estrangeiro => 'true')

    endereco_estrangeiro = FactoryGirl.create(:enderecoestrangeiro, :pai => pais, :endereco => endereco)

    visit edit_enderecoestrangeiro_path(endereco_estrangeiro)

    preencher_e_verificar_enderecoestrangeiro


  end

  scenario 'excluir Endereco_estrangeiro' do #, :javascript => true do

    pais = FactoryGirl.create(:pai, :nome => 'Cuba', :nacionalidade => 'Cubano')
    endereco = FactoryGirl.create(:endereco, :estrangeiro => 'true')

    endereco_estrangeiro = FactoryGirl.create(:enderecoestrangeiro, :pai => pais, :endereco => endereco)

    visit enderecoestrangeiros_path

    click_link 'Excluir'
    
    
  end



  def preencher_e_verificar_enderecoestrangeiro

    fill_in 'Identificacao_residencial', :with => 'Numero 10'
    fill_in 'Identificacao_local', :with => 'Bairro X'
    fill_in 'Identificacao_regional', :with => 'Cidade Y'
    
    select 'Cuba', :on => 'Pais'
    select 'true', :on => 'Endereco'
    
    click_button 'Salvar'
    page.should have_content 'Identificacao residencial: Numero 10'
    page.should have_content 'Identificacao local: Bairro X'
    page.should have_content 'Identificacao regional: Cidade Y'
    page.should have_content 'Pais: Cuba'
    page.should have_content 'Estrangeiro: true'
    
  end

      

end
