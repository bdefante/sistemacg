class CreateTelefones < ActiveRecord::Migration
  def change
    create_table :telefones do |t|
      t.string :tipo
      t.string :numero
      t.string :codigo_area
      t.string :ramal
      t.references :beneficiario

      t.timestamps
    end
    add_index :telefones, :beneficiario_id
  end
end
