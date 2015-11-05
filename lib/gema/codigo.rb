class Bibliografia
    attr_reader :x, :y, :z, :w
    def initialize(autor, titulo, editorial, serie='0')
        @x = autor
        @y = titulo
        @w = editorial
        @z = serie
    end
end