class CreatePessoafisicas < ActiveRecord::Migration
  def change
    create_table :pessoafisicas do |t|
      t.string :cpf
      t.string :documento
      t.references :beneficiario

      t.timestamps
    end
    add_index :pessoafisicas, :beneficiario_id
  end
end
