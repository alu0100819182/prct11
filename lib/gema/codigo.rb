class Bibliografia
    attr_reader :x, :y, :z, :w, :t
    def initialize(autor, titulo, editorial, edicion, serie='0')
        @x = autor
        @y = titulo
        @w = editorial
        @t = edicion
        @z = serie
    end
end