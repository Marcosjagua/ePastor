class CreateUsuarios < ActiveRecord::Migration
  def change
    create_table :usuarios do |t|
      t.string :nome
      t.string :senha
      t.integer :grupo
      t.string :email
      t.boolean :ativo

      t.timestamps
    end
  end
end
