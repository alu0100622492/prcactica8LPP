require 'spec_helper'
require 'lista_enlazada'
require 'dieta'

describe Dieta::Lista_enlazada do
	before :all do
	@menu_uno = Dieta::Dieta.new("ALMUERZO", "30 - 35%", ["Macarrones con salsa de tomate y queso parmesano.", "Escalope de ternera"],
                          "1 1/2 cucharón", 200, 785.9, 19, 34, 47)	
	@l1 = Dieta::Lista_enlazada.new
	@nodo1= Dieta::Nodo.new(@menu_uno,nil)
	end

	describe "Pruebas lista enlazada" do
		context "Pruebas atributos lista enlazada" do
			it"Existe una clase Lista"do
			expect(@l1.class) ==  Dieta::Lista_enlazada
			end
		end
	end
end

