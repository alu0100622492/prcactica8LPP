module Dieta

	class Menu_alimentos < Dieta
		def initialize(title, porcentaje,platos,porcion,gramos,vct,p_proteinas,p_grasas,p_hidratos,alimentos)
		super(title, porcentaje,platos,porcion,gramos,vct,p_proteinas,p_grasas,p_hidratos)
		@aliementos = alimentos
		end
		
	end	
end
