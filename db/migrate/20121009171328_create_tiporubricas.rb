class CreateTiporubricas < ActiveRecord::Migration
  def change
    create_table :tiporubricas do |t|
      t.string :definicao

      t.timestamps
    end
  end
end
