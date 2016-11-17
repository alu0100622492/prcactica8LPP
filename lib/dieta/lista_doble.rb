module Dieta	
	
Nodo_doble = Struct.new(:valor,:siguiente,:anterior )

	class Lista_doble
		
		attr_accessor :head,:tail,

		def initialize(h=nil, t=nil)
		@head = nil
		@tail = nil	
		end
		
		def push_principio(nod)
		if @head != nil
			@aux = Nodo_doble.new(nod,nil,nil)
			@head.anterior = @aux	
			@aux.siguiente = @head
			else
			@aux = Nodo_doble.new(nod,nil,nil)
			@head = @aux
			end
		end
		
		def pop_principio()
			if @head != nil
			@aux = @head 
			@head = @head.siguiente
			@aux.siguiente = nil
			
			else
			puts 'Lista doble vacia'
			return nil
			end
		end	
	end
end
