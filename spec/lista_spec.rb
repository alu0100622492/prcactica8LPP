require 'spec_helper'
require 'Lista_enlazada'

describe Lista_enlazada do
	before :all do
	
	@l1 = Dieta::Lista_enlazada.new();
	end

	describe "Pruebas lista enlazada" do
		context "Pruebas atributos lista enlazada" do
			it"Debe existir un nodo en la lista con sus datos y su siguiente"
			expect(@l1).to have_attributes(:valor => nil)
			#expect(@l1).to have_attributes(:next => nil)
			end
		end
	end


