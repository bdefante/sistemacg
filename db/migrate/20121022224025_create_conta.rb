class CreateConta < ActiveRecord::Migration
  def change
    create_table :conta do |t|
      t.string :numero_conta
      t.references :agencium

      t.timestamps
    end
    add_index :conta, :agencium_id
  end
end
