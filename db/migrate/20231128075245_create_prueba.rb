class CreatePrueba < ActiveRecord::Migration[7.1]
  def change
    create_table :pruebas do |t|
      t.string :datorandom

      t.timestamps
    end
  end
end
