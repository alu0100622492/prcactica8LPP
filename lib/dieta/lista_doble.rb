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
			@aux = Nodo_doble.new(nod,@head,nil)
			@head.anterior = @aux	
	
			else
			@aux = Nodo_doble.new(nod,nil,nil)
			@head = @aux
			@tail = @head
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

		def push_final(nod)
			if @head == nil
			@aux = Nodo_doble.new(nod,nil,nil)
			@head = @aux
			@tail = @head
			else
			@tail.siguiente = Nodo_doble.new(nod,nil,@tail)
			@tail = @tail.siguiente
			end
		end
		
		def pop_final()
			if @head == nil
			puts 'Lista doble vacia'
			else
				if @head == @tail
				@head = nil
				@tail = nil
				else
				@tail = @tail.anterior
				@tail.siguiente = nil
				end
			end
		end	


		#def each()
        	#	if(@head !=nil)
           	#	@temp=@head
             	#		while (@temp != nil) do
             	#		yield @temp.valor
             	#		@temp=@temp.siguiente 
             	#		end
        	#	end
    		#end
		
	end
end
