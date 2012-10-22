# coding: utf-8

require 'spec_helper'

feature 'gerenciar Endereco_brasileiro' do

  scenario 'incluir Endereco_brasileiro' do #, :javascript => true do
    uf = FactoryGirl.create(:uf, :sigla => 'RJ', :nome => 'Rio de Janeiro')
    municipio = FactoryGirl.create(:municipio, :nome => 'Campos', :uf => uf)
    endereco = FactoryGirl.create(:endereco, :estrangeiro => 'false')

    visit new_enderecobrasileiro_path

    preencher_e_verificar_enderecobrasileiro
  end

  scenario 'alterar Endereco_brasileiro' do #, :javascript => true do

    uf = FactoryGirl.create(:uf, :sigla => 'RJ', :nome => 'Rio de Janeiro')
    municipio = FactoryGirl.create(:municipio, :nome => 'Campos', :uf => uf)
    endereco = FactoryGirl.create(:endereco, :estrangeiro => 'false')

    endereco_brasileiro = FactoryGirl.create(:enderecobrasileiro, :municipio => municipio, :endereco => endereco)

    visit edit_enderecobrasileiro_path(endereco_brasileiro)

    preencher_e_verificar_enderecobrasileiro


  end

  scenario 'excluir Endereco_brasileiro' do #, :javascript => true do

    uf = FactoryGirl.create(:uf, :sigla => 'RJ', :nome => 'Rio de Janeiro')
    municipio = FactoryGirl.create(:municipio, :nome => 'Campos', :uf => uf)
    endereco = FactoryGirl.create(:endereco, :estrangeiro => 'false')

    endereco_brasileiro = FactoryGirl.create(:enderecobrasileiro, :municipio => municipio, :endereco => endereco)

    visit enderecobrasileiros_path

    click_link 'Excluir'
    
    
  end



  def preencher_e_verificar_enderecobrasileiro

    fill_in 'Nome_logradouro', :with => 'Rua Sete de Setembro'
    fill_in 'Numero', :with => '100'
    fill_in 'Complemento', :with => 'Altos'
    fill_in 'Caixa_postal', :with => '2000'
    fill_in 'Bairro', :with => 'Centro'
    fill_in 'Cep', :with => '28000000'
    
    select 'Campos', :on => 'Municipio'
    select 'false', :on => 'Estrangeiro'
    
    click_button 'Salvar'
    page.should have_content 'Nome logradouro: Rua Sete de Setembro'
    page.should have_content 'Numero: 100'
    page.should have_content 'Complemento: Altos'
    page.should have_content 'Caixa postal: 2000'
    page.should have_content 'Bairro: Centro'
    page.should have_content 'Cep: 28000000'
    page.should have_content 'Municipio: Campos'
    page.should have_content 'Estrangeiro: false'

    
  end

      

end
