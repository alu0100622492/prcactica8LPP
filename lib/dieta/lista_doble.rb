module Dieta	
	
Nodo_doble = Struct.new(:valor,:siguiente,:anterior )

	class Lista_doble
		
		attr_accessor :head,:tail,

		def initialize(h=nil, t=nil)
		@head = nil
		@tail = nil	
		end
		
		def push(nod)
		if head != nil
			@aux = Nodo_doble.new(nod,nil,nil)
			@head.anterior = @aux	
			@aux.siguiente = @head
			else
			@aux = Nodo_doble.new(nod,nil,nil)
			@head = @aux
			end
		end
		
		def pop()
		
		end
	end
end
