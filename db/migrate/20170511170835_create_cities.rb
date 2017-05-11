class CreateCities < ActiveRecord::Migration[5.0]
  def change
    create_table :cities do |t|
      t.string :nome
      t.references :state, index: true, foreign_key: true
    end
  end
end
