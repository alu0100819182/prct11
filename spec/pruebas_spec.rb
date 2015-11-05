require 'gema/codigo.rb'
require 'spec_helper'

describe Bibliografia do
    before :each do
        @b1 = Bibliografia.new(['Dave Thomas', 'Andy Hunt', 'Chad Fowler'],'Programming Ruby 1.9 & 2.0: The Pragmatic Programmers’ Guide','The Facets of Ruby')
        @b2 = Bibliografia.new(['Dave Thomas', 'Andy Hunt', 'Chad Fowler'],'Programming Ruby 1.9 & 2.0: The Pragmatic Programmers’ Guide')
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
    end
end