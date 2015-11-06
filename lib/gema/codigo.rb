class Bibliografia
    attr_reader :x, :y, :z, :w, :t, :s, :m
    def initialize(autor, titulo, editorial, edicion, publicacion, isbn, serie='0')
        @x = autor
        @y = titulo
        @w = editorial
        @t = edicion
        @s = publicacion
        @m = isbn
        @z = serie
    end
    def getautor 
        @x
    end
    def gettitulo
        @y
    end
    def getserie
        @z
    end
    def geteditorial
        @w
    end
    def getedicion
        @t
    end
    def getpublicacion
        @s
    end
    def getisbn
        @m
    end
    def to_s
        "Autores: #@x, Título: #@y, Serie: #@z, Editorial: #@w, #@t Edición, Fecha de Publicación: #@s y ISBN: #@m"
    end
end