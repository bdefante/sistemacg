class CreatePais < ActiveRecord::Migration
  def change
    create_table :pais do |t|
      t.string :nome
      t.string :nacionalidade

      t.timestamps
    end
  end
end
