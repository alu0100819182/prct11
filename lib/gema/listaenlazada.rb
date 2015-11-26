Nodo = Struct.new(:value,:next,:prev)

class Listaenlazada
    include Enumerable
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
    
    def insertb (v)
        n = Nodo.new(v,nil,nil)
        if(empty == true)
            @ini = n
            @fin = n
        else
            @ini.prev = n;
        end
        @ini = n
        return true
    end
    
     def insertf (v)
        n = Nodo.new(v,nil,nil)
    
        if(empty == true)
            @ini = n
            @fin = n
        else
            n.prev = @fin
            @fin.next = n;
        end
        @fin = n
        return true
    end
    
    def extractb
            valor = @ini.value
            if(empty == true)
                return false
            else
                if(@ini == @fin)
                    @ini = nil
                    @fin = nil
                    return valor
                else
                    @ini = @ini.next
                    return valor
                end
            end
    end
    
     def extractf
            valor = @fin.value
            if(empty == true)
                return false
            else
                if(@ini == @fin)
                    @ini = nil
                    @fin = nil
                    return valor
                else
                    @fin = @fin.prev
                    return valor
                end
            end
    end
end