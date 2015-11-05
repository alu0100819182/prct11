class Bibliografia
    attr_reader :x, :y, :z
    def initialize(autor, titulo, serie='0')
        @x = autor
        @y = titulo
        @z = serie
    end
end