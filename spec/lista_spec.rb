require 'spec_helper'
require 'lista_enlazada'
require 'dieta'

describe Dieta::Lista_enlazada do
	before :all do
	
	@l1 = Dieta::Lista_enlazada.new
	@nodo1= Dieta::Nodo.new(nil,nil)
	end

	describe "Pruebas lista enlazada" do
		context "Pruebas atributos lista enlazada" do
			it"Existe una clase Lista"do
			expect(@l1.class) ==  Lista_enlazada
			end
			it"Debe existir un nodo en la lista con sus datos y su siguiente"
			#expect(@l1).to have_attributes(:valor => nil)
			#expect(@l1).to have_attributes(:next => nil)
			end
		end
	end


