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
    @direito_consumidors = DireitoConsumidor.order("created_at desc").limit(5)
  end
  
  def previdenciario
    @title = 'Antonio Martins de Farias Advogado - Direito Previdenciario'
    @direito_previdenciarios = DireitoPrevidenciario.order("created_at desc").limit(5)
  end

  def servicos
    @title = 'Antonio Martins de Farias Advogado - Links Uteis'
  end
  
  def tributario
    @title = 'Antonio Martins de Farias Advogado - Direito Tributario'
    @direito_tributarios = DireitoTributario.order("created_at desc").limit(5)
  end
  
  def atuacao
    @title = 'Antonio Martins de Farias Advogado - Area de Atuacao'
  end
  
  def empresarial
    @title = 'Antonio Martins de Farias Advogado - Direito Empresarial'
    @direito_empresarials = DireitoEmpresarial.order("created_at desc").limit(5)
  end
  
  def civil
    @title = 'Antonio Martins de Farias Advogado - Direito Civil'
    @direito_civils = DireitoCivil.order("created_at desc").limit(5)
  end

end
  
