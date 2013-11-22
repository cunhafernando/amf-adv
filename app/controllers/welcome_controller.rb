class WelcomeController < ApplicationController
  
  def index
    @title = 'Antonio Martins de Farias Advogado - Home'
    @informes = Informe.order("created_at desc").limit(2)
    @clausulas = Clausula.order("created_at desc").limit(2)
    @decisaos = Decisao.order("created_at desc").limit(2)
    
  end
  
  def contato
    @title = 'Antonio Martins de Farias Advogado - Contato'
  end
  
  def consumidor
    @title = 'Antonio Martins de Farias advogado - Direito do Consumidor'
  end
  
  def previdenciario
    @title = 'Antonio Martins de Farias Advogado - Direito Previdenciario'
  end

  def servicos
    @title = 'Antonio Martins de Farias Advogado - Links Uteis'
  end
  
  def tributario
    @title = 'Antonio Martins de Farias Advogado - Direito Tributario'
  end
  
  def atuacao
    @title = 'Antonio Martins de Farias Advogado - Area de Atuacao'
  end

end
  
