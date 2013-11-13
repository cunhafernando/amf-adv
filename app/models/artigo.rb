class Artigo < ActiveRecord::Base
  attr_accessible :autor, :conteudo, :data, :titulo
end
