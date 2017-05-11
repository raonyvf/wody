class CreateStates < ActiveRecord::Migration[5.0]
  def change
    create_table :states do |t|
      t.string :nome
      t.string :sigla
    end
  end
end
