class WelcomeController < ApplicationController
  
  def index
    @title = 'AM Farias Advogado - Home'
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
    @title = 'AM Farias Advogado - Area de Atuacaoo'
  end

end
  
