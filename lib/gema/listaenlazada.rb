Nodo = Struct.new(:data, :siguiente)

    class Listaenlazada
    attr_reader :beginning, :endd
    
        def initialize
            @beginning = nil
            @endd = nil
        end
        
        def empty
            if(@beginnig==nil)
                return true
            else
                return false
            end
        end

        def insert (valor)
            n = Nodo.new(valor, nil)
            if(empty==true)
                @beginning = n
                @endd = n
            else
                @endd.siguiente = n
                @endd = n
            end
            true
        end 
        
    end 