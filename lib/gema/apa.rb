require 'gema/codigo'
require 'gema/listaenlazada'

class APA
    include Comparable
    attr_reader :o, :nombre
    def initialize (biblio)
        @o = biblio
    end
    
    def nomape
        tam = @o.x.length
        for i in 0..tam-1
            if(i!=tam-1)
                mensaje = "#{mensaje}"+"Autor, #{@o.ap[i][0]}. #{@o.x[i][0]}. & "
            else
                mensaje = "#{mensaje}"+"Autor, #{@o.ap[i][0]}. #{@o.x[i][0]}. "
            end
        end
        mensaje
    end
    
    def <=> (other)
        if(@o.ap == other.ap)
            if(@o.s == other.s)
               @o.y <=> other.y
            else
                @o.s <=> other.s
            end
        else
            @o.ap <=> ohter.ap
        end
    end
    
end