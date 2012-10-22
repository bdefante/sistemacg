class CreateBeneficiarios < ActiveRecord::Migration
  def change
    create_table :beneficiarios do |t|
      t.string :nome
      t.references :contum
      t.references :endereco

      t.timestamps
    end
    add_index :beneficiarios, :contum_id
    add_index :beneficiarios, :endereco_id
  end
end
