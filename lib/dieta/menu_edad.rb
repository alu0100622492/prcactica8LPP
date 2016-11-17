module Dieta
	class Menu_edades < Dieta
		
		def initialize(title, porcentaje,platos,porcion,gramos,vct,p_proteinas,p_grasas,p_hidratos,edad)
		super(title, porcentaje,platos,porcion,gramos,vct,p_proteinas,p_grasas,p_hidratos)
		@edad= edad
		end
		
		def to_s
                super.to_s+"\n La Edad para estos productos es: "+"#{@edad}"
                end

	end
end
