class TareasController < ApplicationController

  def index
  	@quizz = Platillo.find_by_sql("select concat(platillos.nombre , ' de ' ,establecimientos.nombre ) as Nombre, count(ordenes.platillo_id) as N_Ordenes from establecimientos
inner join platillos on establecimientos.id = platillos.establecimiento_id
inner join ordenes on platillos.id = ordenes.platillo_id
group by platillos.id
order by N_Ordenes desc
limit 10
")
  end

end
