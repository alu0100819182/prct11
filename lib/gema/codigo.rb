class Bibliografia
    attr_reader :x, :y, :z, :w, :t, :s
    def initialize(autor, titulo, editorial, edicion, publicacion, serie='0')
        @x = autor
        @y = titulo
        @w = editorial
        @t = edicion
        @s = publicacion
        @z = serie
    end
end