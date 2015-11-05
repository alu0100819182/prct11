require 'gema/codigo.rb'
require 'spec_helper'

describe Bibliografia do
    before :each do
        @b1 = Bibliografia.new(['Dave Thomas', 'Andy Hunt', 'Chad Fowler'],'Programming Ruby 1.9 & 2.0: The Pragmatic Programmers’ Guide','Pragmatic Bookshelf',4,'July 7, 2013','The Facets of Ruby')
        @b2 = Bibliografia.new(['Dave Thomas', 'Andy Hunt', 'Chad Fowler'],'Programming Ruby 1.9 & 2.0: The Pragmatic Programmers’ Guide','Pragmatic Bookshelf',4,'July 7, 2013')
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
    end
end