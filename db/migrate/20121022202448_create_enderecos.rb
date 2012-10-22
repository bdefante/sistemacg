class CreateEnderecos < ActiveRecord::Migration
  def change
    create_table :enderecos do |t|
      t.string :estrangeiro

      t.timestamps
    end
  end
end
