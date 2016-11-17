
module Dieta

	class Menu_alimentos < Dieta
		def initialize(title, porcentaje,platos,porcion,gramos,vct,p_proteinas,p_grasas,p_hidratos,alimentos)
		super(title, porcentaje,platos,porcion,gramos,vct,p_proteinas,p_grasas,p_hidratos)
		@alimentos = alimentos
		end
		
		def to_s
                super.to_s+"\n La categorias de alimentos es: "+"#{@alimentos}"
                end

	end	
end
