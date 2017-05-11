class CreateAddresses < ActiveRecord::Migration[5.0]
  def change
    create_table :addresses do |t|
      t.string :rua
      t.string :numero
      t.string :complemento
      t.string :bairro
      t.string :cep
      t.references :city, foreign_key: true
      t.references :person, foreign_key: true

      t.timestamps
    end
  end
end
