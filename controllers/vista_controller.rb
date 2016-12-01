class VistaController < ApplicationController
  @topest = Establecimiento.find_by_sql(SELECT Nombre FROM(SELECT establecimientos.nombre as Nombre, count(reserva.establecimiento_id) as reservas FROM establecimientos
  INNER JOIN reservas ON establecimientos.id = reservas.establecimiento_id
  GROUP BY establecimientos.establecimientos_id
  ORDER BY reservas desc
  LIMIT 5) e
  end

  def index
  @toppla = PLatillo.find_by_sql(SELECT Nombre FROM(
  SELECT CONCAT(platillos.nombre,” de ”,establecimientos.nombre) as Nombre, count(ordenes.platillo_id) as N_Ordenes FROM establecimientos
  INNER JOIN platillos ON establecimientos.establecimiento_id = platillos.establecimiento_id
  INNER JOIN ordenes ON platillos.platillo_id = ordenes.platillos_id
  GROUP BY platillos.id
  ORDER BY N_Ordenes desc
  LIMIT 5) p
  )
  end




end
