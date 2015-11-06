require 'gema/codigo.rb'
require 'spec_helper'

describe Bibliografia do
    before :each do
        @b1 = Bibliografia.new(['Dave Thomas', 'Andy Hunt', 'Chad Fowler'],'Programming Ruby 1.9 & 2.0: The Pragmatic Programmers’ Guide','Pragmatic Bookshelf',4,'July 7, 2013',['ISBN-13: 978-1937785499', 'ISBN-10: 1937785491'],'The Facets of Ruby')
        @b2 = Bibliografia.new(['Dave Thomas', 'Andy Hunt', 'Chad Fowler'],'Programming Ruby 1.9 & 2.0: The Pragmatic Programmers’ Guide','Pragmatic Bookshelf',4,'July 7, 2013',['ISBN-13: 978-1937785499', 'ISBN-10: 1937785491'])
    end
    
    describe "Datos de la bibliografia" do
        it "Autor o autores" do
            @b1.x.should eq(['Dave Thomas', 'Andy Hunt', 'Chad Fowler'])
            @b2.x.should eq(['Dave Thomas', 'Andy Hunt', 'Chad Fowler'])
        end
        it "Titulo" do
            @b1.y.should eq('Programming Ruby 1.9 & 2.0: The Pragmatic Programmers’ Guide')
            @b2.y.should eq('Programming Ruby 1.9 & 2.0: The Pragmatic Programmers’ Guide')
        end
        it "Serie" do
            @b1.z.should eq('The Facets of Ruby')
            @b2.z.should eq('0')
        end
        it "Editorial" do
            @b1.w.should eq('Pragmatic Bookshelf')
            @b2.w.should eq('Pragmatic Bookshelf')
        end
        it "Numero de Edicion" do
            @b1.t.should eq(4)
            @b2.t.should eq(4)
        end
        it "Fecha de publicacion" do
            @b1.s.should eq('July 7, 2013')
            @b2.s.should eq('July 7, 2013')
        end
        it "ISBN" do
             @b1.m.should eq(['ISBN-13: 978-1937785499', 'ISBN-10: 1937785491'])
             @b2.m.should eq(['ISBN-13: 978-1937785499', 'ISBN-10: 1937785491'])
        end
    end
    describe "Metodos de obtencion" do
        it "Obtener autor" do
            @b1.getautor.should == (['Dave Thomas', 'Andy Hunt', 'Chad Fowler'])
        end
        it "Obtener titulo" do
            @b1.gettitulo.should == ('Programming Ruby 1.9 & 2.0: The Pragmatic Programmers’ Guide')
        end
        it "Obtener serie" do
            @b1.getserie.should == ('The Facets of Ruby')
        end
        it "Obtener editorial" do
            @b1.geteditorial.should == ('Pragmatic Bookshelf')
        end
        it "Obtener numero de edicion" do
            @b1.getedicion.should == (4)
        end
        it "Obtener fecha de publicacion" do
            @b1.getpublicacion.should == ('July 7, 2013')
        end
        it "Obtener listado de isbn" do
            @b1.getisbn.should == (['ISBN-13: 978-1937785499', 'ISBN-10: 1937785491'])
        end
        it "Referencia formateda" do
            @b1.to_s.should == ("Autores: [\"Dave Thomas\", \"Andy Hunt\", \"Chad Fowler\"], Título: Programming Ruby 1.9 & 2.0: The Pragmatic Programmers’ Guide, Serie: The Facets of Ruby, Editorial: Pragmatic Bookshelf, 4 Edición, Fecha de Publicación: July 7, 2013 y ISBN: [\"ISBN-13: 978-1937785499\", \"ISBN-10: 1937785491\"]")
        end
    end
end