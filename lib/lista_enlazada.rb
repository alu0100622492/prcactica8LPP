module Dieta
     

  Nodo = Struct.new( :valor, :next)

  class Lista_enlazada
      
    
        
 	   attr_accessor :head, :ultcola,:valor, 
    
    
    	def initialize(n=nil, m=nil)
   		@head=n
		@ultcola=m
    	end
    
    
    	def each()
        	if(@head !=nil)
           		@temp=@head
             		while (@temp != nil) do
             		yield @temp.valor
             		@temp=@temp.siguiente 
            		end
        	end
    	end
  
           
  end
end
