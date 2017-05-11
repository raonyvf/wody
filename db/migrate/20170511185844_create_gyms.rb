class CreateGyms < ActiveRecord::Migration[5.0]
  def change
    create_table :gyms do |t|
      t.integer :filial
      t.references :physical_person, foreign_key: true, index:true

      t.timestamps
    end
  end
end
