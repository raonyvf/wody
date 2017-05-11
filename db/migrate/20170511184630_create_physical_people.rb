class CreatePhysicalPeople < ActiveRecord::Migration[5.0]
  def change
    create_table :physical_people do |t|
      t.string :cnpj
      t.string :nome_fantasia
      t.references :person, foreign_key: true, index: true

      t.timestamps
    end
  end
end
