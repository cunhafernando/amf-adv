class Post < ActiveRecord::Base
  has_many :comentarios
  attr_accessible :conteudo, :titulo, :autor
  validates :titulo, :presence => true, :length => { :minimum => 10 }
  validates :conteudo, :presence => true
end
