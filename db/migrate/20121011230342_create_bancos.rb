class CreateBancos < ActiveRecord::Migration
  def change
    create_table :bancos do |t|
      t.string :nome
      t.string :observacoes

      t.timestamps
    end
  end
end
