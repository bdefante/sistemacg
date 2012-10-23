# coding: utf-8

require 'spec_helper'

feature 'gerenciar Gasto' do

  scenario 'incluir Gasto' do #, :javascript => true do
    tabelageral = FactoryGirl.create(:tabelageral, :valor_entrada => 1500.0, :valor_saida => 1450.0, :ano => 2011)
    rubrica = FactoryGirl.create(:rubrica, :valor_entrada => 150.0, :valor_saida => 145.0, :tabelageral => tabelageral)

    banco = FactoryGirl.create(:banco, :nome => 'Itau Unibanco', :observacoes => 'S.A.')
    agencia = FactoryGirl.create(:agencium, :numero_agencia => '123456', :endereco => 'Avenida Sete de Setembro, 130', :banco => banco)
    endereco = FactoryGirl.create(:endereco, :estrangeiro => 'false')
    conta = FactoryGirl.create(:contum, :numero_conta => '54321', :agencium => agencia)
    beneficiario = FactoryGirl.create(:beneficiario, :nome => 'Fulano de Tal', :contum => conta, :endereco => endereco)

    gasto = FactoryGirl.create(:gasto, :rubrica => rubrica, :beneficiario => beneficiario)

    visit new_gasto_path

    preencher_e_verificar_gasto
  end

  scenario 'alterar Gasto' do #, :javascript => true do

    tabelageral = FactoryGirl.create(:tabelageral, :valor_entrada => 1500.0, :valor_saida => 1450.0, :ano => 2011)
    rubrica = FactoryGirl.create(:rubrica, :valor_entrada => 150.0, :valor_saida => 145.0, :tabelageral => tabelageral)

    banco = FactoryGirl.create(:banco, :nome => 'Itau Unibanco', :observacoes => 'S.A.')
    agencia = FactoryGirl.create(:agencium, :numero_agencia => '123456', :endereco => 'Avenida Sete de Setembro, 130', :banco => banco)
    endereco = FactoryGirl.create(:endereco, :estrangeiro => 'false')
    conta = FactoryGirl.create(:contum, :numero_conta => '54321', :agencium => agencia)
    beneficiario = FactoryGirl.create(:beneficiario, :nome => 'Fulano de Tal', :contum => conta, :endereco => endereco)

    gasto = FactoryGirl.create(:gasto, :rubrica => rubrica, :beneficiario => beneficiario)

    visit edit_gasto_path(gasto)

    preencher_e_verificar_gasto


  end

  scenario 'excluir Gasto' do #, :javascript => true do

    tabelageral = FactoryGirl.create(:tabelageral, :valor_entrada => 1500.0, :valor_saida => 1450.0, :ano => 2011)
    rubrica = FactoryGirl.create(:rubrica, :valor_entrada => 150.0, :valor_saida => 145.0, :tabelageral => tabelageral)

    banco = FactoryGirl.create(:banco, :nome => 'Itau Unibanco', :observacoes => 'S.A.')
    agencia = FactoryGirl.create(:agencium, :numero_agencia => '123456', :endereco => 'Avenida Sete de Setembro, 130', :banco => banco)
    endereco = FactoryGirl.create(:endereco, :estrangeiro => 'false')
    conta = FactoryGirl.create(:contum, :numero_conta => '54321', :agencium => agencia)
    beneficiario = FactoryGirl.create(:beneficiario, :nome => 'Fulano de Tal', :contum => conta, :endereco => endereco)

    gasto = FactoryGirl.create(:gasto, :rubrica => rubrica, :beneficiario => beneficiario)

    visit gastos_path

    click_link 'Excluir'
    
    
  end



  def preencher_e_verificar_gasto

    fill_in 'Data', :with => '12/12/2012'
    fill_in 'Valor', :with => 50.0
    fill_in 'Observacoes', :with => 'Gastos comprovados'
    
    select '150.0', :on => 'Rubrica'
    select 'Fulano de Tal', :on => 'Beneficiario'
    
    click_button 'Salvar'

    page.should have_content 'Data: 12/12/2012'
    page.should have_content 'Valor: 50.0'
    page.should have_content 'Observacoes: Gastos comprovados'
    page.should have_content 'Rubrica: 150.0'
    page.should have_content 'Beneficiario: Fulano de Tal'
    
  end

      

end
