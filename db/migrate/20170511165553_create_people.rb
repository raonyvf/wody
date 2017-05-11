class CreatePeople < ActiveRecord::Migration[5.0]
  def change
    create_table :people do |t|
      t.string :nome
      t.string :telefone
      t.string :celular

      t.timestamps
    end
  end
end
