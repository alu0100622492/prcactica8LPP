module Dieta
	class Menu_edades < Dieta
		
		def initialize(title, porcentaje,platos,porcion,gramos,vct,p_proteinas,p_grasas,p_hidratos,edad)
		super(title, porcentaje,platos,porcion,gramos,vct,p_proteinas,p_grasas,p_hidratos)
		@edad= edad
		end

	end
end
