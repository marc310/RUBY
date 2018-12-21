class CreateTamanhos < ActiveRecord::Migration[5.2]
  def change
    create_table :tamanhos do |t|
      t.string :numero

      t.timestamps
    end
  end
end
