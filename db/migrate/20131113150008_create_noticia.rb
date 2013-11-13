class CreateNoticia < ActiveRecord::Migration
  def change
    create_table :noticia do |t|
      t.string :titulo
      t.text :conteudo
      t.string :autor
      t.date :data

      t.timestamps
    end
  end
end
