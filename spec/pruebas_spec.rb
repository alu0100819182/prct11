require 'gema/codigo.rb'
require 'gema/listaenlazada.rb'
require 'gema/apa.rb'
require 'spec_helper'

describe APA do
    before :all do
         @biblio1 = Bibliografia.new(['Omar'],['Alvarez'], 'periodico marca', 'Futbol', 12, 'December 9 2015' ,['9781937785499', '1937785491'], 'The Facets of futbol')
         @biblio2 = Bibliografia.new(['Dave', 'Andy'], ['Thomas', 'Hunt'], 'Programming Ruby 1.9 & 2.0: The Pragmatic Programmers’ Guide', 'Pragmatic Bookshelf', 4, 'July 7 2013', ['9781937785499', '1937785491'], 'The Facets of Ruby')
         @libro = Libro.new(['Paulo'], ['Coelho'], 'El alquimista', 'Planeta', 4, 'January 1 2010', ['9781937785499', '1937785491'], 'Spain', 'librito')
         @revista = Articulorevista.new(['Bill','Steve'], ['Gates','Jobs'], 'ComputerHoy', 'Ordenador', 6, 'February 2 2012', ['9781937785499', '1937785491'], 'Casaterradelleras', 'revistita')
         @periodico = Articuloperiodico.new(['Maldonado'], ['Maldini'], 'Marca', 'Deportes', 6, 'March 3 2013', ['9781937785499', '1937785491'], 45, 'per')
         @elec = Documentoelectronico.new(['Hatoko'],['Xioaweixao'], 'Vandal', 'Videojuegos', 6, 'April 4 2015', ['9781937785499', '1937785491'], 'España', 0)
         @apa1 = APA.new(@biblio2)
         @apa2 = APA.new(@biblio1)
         @apa3 = APA.new(@libro)
         @apa4 = APA.new(@revista)
         @apa5 = APA.new(@periodico)
         @apa6 = APA.new(@elec)
         @listaAPA = Listaenlazada.new()
    end
    
    describe "pruebas" do
        
        it "Existencia" do
            expect(@apa1.o).to eq(@biblio2)
        end
        
        it "Nombre y apellido" do
            expect(@apa1.nomape).to eq("Autor, T. D. & Autor, H. A. ")
            expect(@apa2.nomape).to eq("Autor, A. O. ")
           
        end
        
        it "Ordenar" do
            @listaAPA.insertf(@biblio1)
            @listaAPA.insertf(@libro)
            @listaAPA.insertf(@revista)
            @listaAPA.insertf(@periodico)
            @listaAPA.insertf(@elec)
            expect(@listaAPA.count).to eq(5)
            @listaAPA.sort
            expect(@listaAPA.extractb).to eq(@biblio1)
            expect(@listaAPA.extractb).to eq(@libro)
            expect(@listaAPA.extractb).to eq(@revista)
            expect(@listaAPA.extractb).to eq(@periodico)
            expect(@listaAPA.extractb).to eq(@elec)
        end
        
        it "Capitalize" do
            expect(@apa2.may).to eq("Periodico Marca")
        end
        
        it "Libro" do
            expect(@apa3.resultado).to eq("  Autor, C. P. January 1 2010. El Alquimista 4 Planeta. Spain.  ")
        end
        
        it "Revista" do
            expect(@apa4.resultado).to eq("  Autor, G. B. & Autor, J. S. February 2 2012. ComputerHoy. 6 Ordenador. Casaterradelleras  ")
        end
        
        it "Periodico" do
            expect(@apa5.resultado).to eq("  Autor, M. M. March 3 2013. Deportes. Marca, pp. 45  ")
        end
        
        it "Documentoelectronico" do
            expect(@apa6.resultado).to eq("  Autor, X. H. April 4 2015. Vandal 6. Lugar de publicacion: España. Disponible en: 0  ")
        end
        
    end
    
end
