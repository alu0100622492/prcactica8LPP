module Dieta
     

  Nodo = Struct.new( :valor, :next)

  class Lista_enlazada
      
    
        
 	   attr_accessor :head, 
    
    
    	def initialize(n=nil)
   		@head=n
    	end

	def pop()
		if @head != nil
			#@aux = @head
			puts 'Hay elementos en la lista'
		else
		
			puts 'No hay nada en la lista enlazada'
			return nil
		end
	end    
    	

	def push(nodo)
		if @head == nil
			@aux=Nodo.new(nodo,nil)
			@head = @aux
		else
			puts 'Insertando nodo en la lista'
			@aux = Nodo.new(nodo,nil)
			@aux.next = @head
			@head = @aux	
		end

	end         
  end
end
