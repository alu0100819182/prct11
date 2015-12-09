require 'gema/codigo'
require 'gema/listaenlazada'

class APA
    attr_reader :o, :nombre
    def initialize (biblio)
        @o = biblio
    end
    
    def nomape
        tam = @o.x.length
        for i in 0..tam-1
            mensaje = "#{mensaje}"+"Autor, #{@o.ap[i][0]}. #{@o.x[i][0]}. "
        end
        mensaje
    end
    
end