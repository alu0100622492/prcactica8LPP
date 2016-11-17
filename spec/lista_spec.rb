require 'spec_helper'
require 'dieta'

describe Dieta::Lista_enlazada do
	before :all do
	@menu_uno = Dieta::Dieta.new("ALMUERZO", "30 - 35%", ["Macarrones con salsa de tomate y queso parmesano.", "Escalope de ternera"],
                          "1 1/2 cucharón", 200, 785.9, 19, 34, 47)	
	@menu_dos = Dieta::Dieta.new("DESAYUNO", "15%",["Leche desnatada","Cacao instantaneo","Cereales de desayuno en hojuelas","Almendras laminadas"],"1 vaso ",200,288.0,17,21,62)
	
	@l1 = Dieta::Lista_enlazada.new
	@l2= Dieta::Lista_enlazada.new
	@nodo1= Dieta::Nodo.new(@menu_uno,nil)
	@nodo2=Dieta::Nodo.new(@menu_dos,nil)
	end

	describe "Biblio" do
		context "Node" do
			it"Existe un struct nodo"do
			expect(@nodo1.class) == Dieta::Nodo
			end
			it"Existe un nodo de la lista con su valor y su siguiente"do
			expect(@nodo1).to have_attributes(:valor => @menu_uno, :next => nil)
			end
		end	
		context "Lista" do
			it"Existe una clase Lista"do
                        expect(@l1.class) ==  Dieta::Lista_enlazada
                        end
			it "Se extrae el primer elemento de la lista" do
			expect(@l1.pop()) == nil
			end
			it "Se puede insertar un elemento" do
			@l1.push(@nodo1)
			expect(@l1.head) == (@nodo1)
			end
			it "Se pueden insertar varios elementos" do
			@l1.push(@nodo1)
			@l1.push(@nodo2)
			expect(@l1.head) == (@nodo2)			
			end
			it "Debe existir una Lista con su cabeza" do
			expect(@l2).to have_attributes(:head => nil)
			end
			
		end
	end
		
end

describe Dieta::Lista_doble do
	before :all do
	 	@menu_uno = Dieta::Dieta.new("ALMUERZO", "30 - 35%", ["Macarrones con salsa de tomate y queso parmesano.", "Escalope de ternera"],
                          "1 1/2 cucharón", 200, 785.9, 19, 34, 47)
		@nodo = Dieta::Nodo_doble.new(@menu_uno,nil,nil)
		@lista_doble = Dieta::Lista_doble.new

	 	@menu_dos = Dieta::Dieta.new("DESAYUNO", "15%",["Leche desnatada","Cacao instantaneo","Cereales de desayuno en hojuelas","Almendras laminadas"],"1 vaso ",200,288.0,17,21,62)
		@nodo1 = Dieta::Nodo_doble.new(@menu_dos,nil,nil
)
	end
	describe "Lista_doble" do
	    context "NODO Y LISTA DOBLE" do	
		it "Existe la clase lista doble" do
		expect(@lista_doble.class) == Dieta::Lista_doble
		end
		
		it "Existe el nodo para la lista doble" do
                expect(@nodo.class) == Dieta::Nodo_doble
                end

		it "Existe un struct nodo con anterior y siguiente" do
		expect(@nodo).to have_attributes(:valor => @menu_uno, :siguiente =>nil, :anterior =>nil)
		end
		it "Existe un Nodo de la lista con sus datos, su siguiente y su anterior" do
	         expect(@lista_doble.head != nil && @lista_doble.siguiente == nil && @lista_doble.anterior == nil) 
	    	end
		it "Existe una lista con sus datos, cabeza y cola" do
                 expect(@lista_doble.head != nil && @lista_doble.tail)
                end

		it "Debemos tener un metodo push_principio" do
		expect(@lista_doble).to respond_to :push_principio
		end
		it "Insertar nodos en la lista" do
           	 @lista_doble.push_principio(@nodo)
            	expect(@lista_doble.head) == (@nodo)
        	end
		it "Insertar varios nodos en la lista por el principio"do
		@lista_doble.push_principio(@nodo)
		@lista_doble.push_principio(@nodo1)
		expect(@lista_doble.head) == (@nodo)
		end
		it "Debe tener un metodo pop principio" do
		expect(@lista_doble).to respond_to :pop_principio
		end
		it "Extraemos elemento de lista por el principio" do
		@lista_doble.pop_principio()
		expect(@lista_doble.head) == (@nodo1)
		end
		it "Debe tener un metodo push por el final" do
                expect(@lista_doble).to respond_to :push_final
                end
                it "Introducimos un elemento en la lista por el final" do
                @lista_doble.push_final(@nodo)
		@lista_doble.push_final(@nodo1)
                expect(@lista_doble.tail) == (@nodo1)
                end
		it "Debe tener un metodo pop final" do
                expect(@lista_doble).to respond_to :pop_final
                end
                it "Extraemos elemento de lista por el final" do
                @lista_doble.pop_final()
                expect(@lista_doble.head) == (@nodo)
                end

	    end
	end
end
