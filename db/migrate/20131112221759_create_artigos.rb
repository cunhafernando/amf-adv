class CreateArtigos < ActiveRecord::Migration
  def change
    create_table :artigos do |t|
      t.string :titulo
      t.text :conteudo
      t.string :autor
      t.date :data

      t.timestamps
    end
  end
end
