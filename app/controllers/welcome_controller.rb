class WelcomeController < ApplicationController
  
  def index
    @title = 'AM Farias Advogado - Home'
    @informes = Informe.order("created_at desc").limit(2)
    @clausulas = Clausula.order("created_at desc").limit(2)
    @decisaos = Decisao.order("created_at desc").limit(2)
    
  end
  
  def contato
    @title = 'AM Farias Advogado - Contato'
  end
  
  def consumidor
    @title = 'AM Farias advogado - Direito do Consumidor'
  end
  
  def previdenciario
    @title = 'AM Farias Advogado - Direito Previdenciario'
  end

  def servicos
    @title = 'AM Farias Advogado - Links Uteis'
  end
  
  def tributario
    @title = 'AM Farias Advogado - Direito Tributario'
  end
  
  def atuacao
    @title = 'AM Farias Advogado - Area de Atuacao'
  end

end
  
