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
    before :each do
        @n1 = Nodo.new(1,1)
    end
    
        describe "Almacenamiento de los valores del nodo" do
            it "Data" do
                expect(@n1.data).to eq(1)
            end
            it "Siguiente" do
                expect(@n1.siguiente).to eq(1)
            end
    end
    
end

