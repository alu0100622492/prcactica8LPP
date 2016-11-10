require 'spec_helper'
require 'lista_enlazada'
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

