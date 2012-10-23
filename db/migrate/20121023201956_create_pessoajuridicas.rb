class CreatePessoajuridicas < ActiveRecord::Migration
  def change
    create_table :pessoajuridicas do |t|
      t.string :cnpj
      t.string :observacoes
      t.references :beneficiario

      t.timestamps
    end
    add_index :pessoajuridicas, :beneficiario_id
  end
end
