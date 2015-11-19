require 'gema/codigo.rb'
require 'gema/listaenlazada.rb'
require 'spec_helper'

describe Bibliografia do
    before :each do
        @b1 = Bibliografia.new(['Dave Thomas', 'Andy Hunt', 'Chad Fowler'],'Programming Ruby 1.9 & 2.0: The Pragmatic Programmers’ Guide','Pragmatic Bookshelf',4,'July 7, 2013',['ISBN-13: 978-1937785499', 'ISBN-10: 1937785491'],'The Facets of Ruby')
    end
    
    describe "Datos de la bibliografia" do
        it "Autor o autores" do
            expect(@b1.x).to eq(['Dave Thomas', 'Andy Hunt', 'Chad Fowler'])
            #@b1.x.should eq(['Dave Thomas', 'Andy Hunt', 'Chad Fowler'])
        end
        it "Titulo" do
            expect(@b1.y).to eq('Programming Ruby 1.9 & 2.0: The Pragmatic Programmers’ Guide')
            #@b1.y.should eq('Programming Ruby 1.9 & 2.0: The Pragmatic Programmers’ Guide')
        end
        it "Serie" do
            expect(@b1.z).to eq('The Facets of Ruby')
            #@b1.z.should eq('The Facets of Ruby')
        end
        it "Editorial" do
            expect(@b1.w).to eq('Pragmatic Bookshelf')
            #@b1.w.should eq('Pragmatic Bookshelf')
        end
        it "Numero de Edicion" do
            expect(@b1.t).to eq(4)
            #@b1.t.should eq(4)
        end
        it "Fecha de publicacion" do
            expect(@b1.s).to eq('July 7, 2013')
            #@b1.s.should eq('July 7, 2013')
        end
        it "ISBN" do
            expect(@b1.m).to eq(['ISBN-13: 978-1937785499', 'ISBN-10: 1937785491'])
            #@b1.m.should eq(['ISBN-13: 978-1937785499', 'ISBN-10: 1937785491'])
        end
    end
    describe "Metodos de obtencion" do
        it "Obtener autor" do
            expect(@b1.getautor).to eq(['Dave Thomas', 'Andy Hunt', 'Chad Fowler'])
            #@b1.getautor.should == (['Dave Thomas', 'Andy Hunt', 'Chad Fowler'])
        end
        it "Obtener titulo" do
            expect(@b1.gettitulo).to eq('Programming Ruby 1.9 & 2.0: The Pragmatic Programmers’ Guide')
            #@b1.gettitulo.should == ('Programming Ruby 1.9 & 2.0: The Pragmatic Programmers’ Guide')
        end
        it "Obtener serie" do
            expect(@b1.getserie).to eq('The Facets of Ruby')
            #@b1.getserie.should == ('The Facets of Ruby')
        end
        it "Obtener editorial" do
            expect(@b1.geteditorial).to eq('Pragmatic Bookshelf')
            #@b1.geteditorial.should == ('Pragmatic Bookshelf')
        end
        it "Obtener numero de edicion" do
            expect(@b1.getedicion).to eq(4)
            #@b1.getedicion.should == (4)
        end
        it "Obtener fecha de publicacion" do
            expect(@b1.getpublicacion).to eq('July 7, 2013')
            #@b1.getpublicacion.should == ('July 7, 2013')
        end
        it "Obtener listado de isbn" do
            expect(@b1.getisbn).to eq(['ISBN-13: 978-1937785499', 'ISBN-10: 1937785491'])
            #@b1.getisbn.should == (['ISBN-13: 978-1937785499', 'ISBN-10: 1937785491'])
        end
        it "Referencia formateda" do
            @b1.to_s.should == ("Autores: [\"Dave Thomas\", \"Andy Hunt\", \"Chad Fowler\"], Título: Programming Ruby 1.9 & 2.0: The Pragmatic Programmers’ Guide, Serie: The Facets of Ruby, Editorial: Pragmatic Bookshelf, 4 Edición, Fecha de Publicación: July 7, 2013 y ISBN: [\"ISBN-13: 978-1937785499\", \"ISBN-10: 1937785491\"]")
        end
    end
end

describe Nodo do
    before :all do
        @n1 = Nodo.new(18,11,95)
    end
        
        describe "/ Expectativas del nodo" do
            it "/ Data" do
                expect(@n1.value).to eq(18)
            end
            it "/ Next" do
                expect(@n1.next).to eq(11)
            end
            it "/ Prev" do
                expect(@n1.prev).to eq(95)
            end
        end
end

describe Listaenlazada do
    before :each do

        @biblio1 = Bibliografia.new(['Dave Thomas','Andy Hunt','Chad Fowler'], 'Programming Ruby 1.9 & 2.0: The Pragmatic Programmers’ Guide', 'Pragmatic Bookshelf', 4, 'July 7 2013', ['9781937785499', '1937785491'], 'The Facets of Ruby')
        @biblio2 = Bibliografia.new('Scott Chacon', 'Pro Git 2009th Edition', 'Apress', 2009, 'August 27 2009', ['9781430218333','1430218339'], 'Pro')
        @biblio3 = Bibliografia.new(['David Flanagan','Yukihiro Matsumoto'], 'The Ruby Programming Language', 'O’Reilly Media', 1, 'February 4 2008', ['0596516177','9780596516178'])
        @biblio4 = Bibliografia.new(['David Chelimsky','Dave Astels','Bryan Helmkamp','Dan North','Zach Dennis','Aslak Hellesoy'], 'The RSpecBook: Behaviour Driven Development with RSpec, Cucumber, and Friends', 'Pragmatic Bookshelf', 1, 'December 25 2010', ['1934356379','9781934356371'], 'The Facets of Ruby')
        @biblio5 = Bibliografia.new('Richard E. Silverman','Git Pocket Guide', 'O’Reilly Media', 1, 'August 2 2013', ['1449325866','9781449325862'])
        @l1 = Listaenlazada.new()
        @l2 = Listaenlazada.new()
        
    end
   
    describe "/ Expectativas de la lista" do
        
        it "/ Relacion entre todas las bibliografias, insertar por inicio y extraer por final" do
            expect(@l1.insertb(@biblio1)).to eq(true) 
            expect(@l1.insertb(@biblio2)).to eq(true) 
            expect(@l1.insertb(@biblio3)).to eq(true) 
            expect(@l1.insertb(@biblio4)).to eq(true) 
            expect(@l1.insertb(@biblio5)).to eq(true) 
            expect(@l1.extractf).to eq(@biblio1)
            expect(@l1.extractf).to eq(@biblio2)
            expect(@l1.extractf).to eq(@biblio3)
            expect(@l1.extractf).to eq(@biblio4)
            expect(@l1.extractf).to eq(@biblio5)
       end
       
       it "/ Relacion entre todas las bibliografias, insertar por final y extraer por inicio" do
            expect(@l2.insertf(@biblio1)).to eq(true) 
            expect(@l2.insertf(@biblio2)).to eq(true) 
            expect(@l2.insertf(@biblio3)).to eq(true) 
            expect(@l2.insertf(@biblio4)).to eq(true) 
            expect(@l2.insertf(@biblio5)).to eq(true) 
            expect(@l2.extractb).to eq(@biblio1)
            expect(@l2.extractb).to eq(@biblio2)
            expect(@l2.extractb).to eq(@biblio3)
            expect(@l2.extractb).to eq(@biblio4)
            expect(@l2.extractb).to eq(@biblio5)
       end
        
    end
end

describe Libro do
    before :all do
        @libro = Libro.new('Paulo Coelho', 'El alquimista', 'Planeta', 4, 'January 1 2010', ['9781937785499', '1937785491'], 'librito', 'Spain')
    end
    
    describe "/ Pruebas " do
        it "Instancia" do
           expect(@libro.instance_of?Libro).to eq(true)
        end
        it "Bibliografia" do
            expect(@libro.is_a?Bibliografia).to eq(true)
        end
        it "Object" do
            expect(@libro.is_a?Object).to eq(true)
        end
        it "BasicObject" do
            expect(@libro.is_a?BasicObject).to eq(true)
        end
    end
end

describe Articulorevista do
    before :all do
        @revista = Articulorevista.new('Bill Gates', 'ComputerHoy', 'Ordenador', 6, 'February 2 2012', ['9781937785499', '1937785491'], 'revistita', 1)
    end
    
    describe "/ Pruebas " do
        it "Instancia" do
           expect(@revista.instance_of?Articulorevista).to eq(true)
        end
        it "Bibliografia" do
            expect(@revista.is_a?Bibliografia).to eq(true)
        end
        it "Object" do
            expect(@revista.is_a?Object).to eq(true)
        end
        it "BasicObject" do
            expect(@revista.is_a?BasicObject).to eq(true)
        end
    end
end

describe Articuloperiodico do
    before :all do
        @periodico = Articuloperiodico.new('Maldini', 'Marca', 'Deportes', 6, 'March 3 2013', ['9781937785499', '1937785491'], 'per', "as")
    end
    
    describe "/ Pruebas " do
        it "Instancia" do
           expect(@periodico.instance_of?Articuloperiodico).to eq(true)
        end
        it "Bibliografia" do
            expect(@periodico.is_a?Bibliografia).to eq(true)
        end
        it "Object" do
            expect(@periodico.is_a?Object).to eq(true)
        end
        it "BasicObject" do
            expect(@periodico.is_a?BasicObject).to eq(true)
        end
    end
end