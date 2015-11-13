Nodo = Struct.new(:value,:next)

class Listaenlazada
    attr_reader :ini, :fin
    
    def initialize
        @ini = nil
        @fin = nil
    end
    
    def empty
        if (@ini == nil)
            return true
        else
            return false
        end
    end
    
    def insert (v)
        n = Nodo.new(v,nil)
        if(empty == true)
            @fin = n
            @ini = n
        else
            @fin.next = n
            @fin = n
        end
        return true
    end
    
    def extract
            valor = @ini.value
            @ini = @ini.next
            return valor
    end
        
end