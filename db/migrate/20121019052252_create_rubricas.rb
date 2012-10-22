class CreateRubricas < ActiveRecord::Migration
  def change
    create_table :rubricas do |t|
      t.float :valor_entrada
      t.float :valor_saida
      t.references :tabelageral

      t.timestamps
    end
    add_index :rubricas, :tabelageral_id
  end
end
