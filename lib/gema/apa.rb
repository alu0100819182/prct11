require 'gema/codigo'

class APA
    include Comparable
    attr_reader :o, :titulo
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
    
    def may
        tam = @o.y.length
        @o.y[0] = @o.y[0].capitalize
        for i in 1..tam-1
            if(@o.y[i]==" ")
                @o.y[i+1] = @o.y[i+1].capitalize
            end
        end
        @o.y
    end
    
    def resultado
        if (@o.instance_of?Libro)
            mensaje3 = "#{nomape}#{@o.s}. #{may} #{@o.t} #{@o.w}. #{@o.pa}."
        end
        
        mensaje3
    end
    
end