class CreateGastos < ActiveRecord::Migration
  def change
    create_table :gastos do |t|
      t.string :data
      t.float :valor
      t.string :observacoes
      t.references :rubrica
      t.references :beneficiario

      t.timestamps
    end
    add_index :gastos, :rubrica_id
    add_index :gastos, :beneficiario_id
  end
end
