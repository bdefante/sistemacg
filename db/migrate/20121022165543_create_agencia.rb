class CreateAgencia < ActiveRecord::Migration
  def change
    create_table :agencia do |t|
      t.string :numero_agencia
      t.string :endereco
      t.references :banco

      t.timestamps
    end
    add_index :agencia, :banco_id
  end
end
