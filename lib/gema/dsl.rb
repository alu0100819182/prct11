require 'gema/codigo'

class DSL
    attr_accessor :name, :author, :journal, :title, :abstract
    
    def initialize(name, &block)
        
        self.name = name
        self.author = []
        self.journal = []
        self.title = []
        self.abstract = []

        if block_given?  
            if block.arity == 1
                yield self
            else
                instance_eval &block 
            end
        end
    end
    
    
end