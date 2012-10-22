class CreateEnderecoestrangeiros < ActiveRecord::Migration
  def change
    create_table :enderecoestrangeiros do |t|
      t.string :identificacao_residencial
      t.string :identificacao_local
      t.string :identificacao_regional
      t.references :pai
      t.references :endereco

      t.timestamps
    end
    add_index :enderecoestrangeiros, :pai_id
    add_index :enderecoestrangeiros, :endereco_id
  end
end
