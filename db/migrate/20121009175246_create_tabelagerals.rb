class CreateTabelagerals < ActiveRecord::Migration
  def change
    create_table :tabelagerals do |t|
      t.float :valor_entrada
      t.float :valor_saida
      t.integer :ano

      t.timestamps
    end
  end
end
