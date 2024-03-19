%Gabriel Herrera

% HECHOS 
conectado_directamente(cobija, apolo).
conectado_directamente(apolo, cobija).
conectado_directamente(riberalta, cobija).
conectado_directamente(ciudad_de_la_paz, apolo).
conectado_directamente(apolo, ciudad_de_la_paz).
conectado_directamente(ciudad_de_la_paz, oruro).
conectado_directamente(oruro, ciudad_de_la_paz).
conectado_directamente(ciudad_de_la_paz, cochabamba).
conectado_directamente(cochabamba, ciudad_de_la_paz).
conectado_directamente(ciudad_de_la_paz, trinidad).
conectado_directamente(ciudad_de_oruro, uyuni).
conectado_directamente(ciudad_de_oruro, sucre).
conectado_directamente(sucre, ciudad_de_cochabamba).
conectado_directamente(ciudad_de_cochabamba, sucre).
conectado_directamente(ciudad_de_santacruz, cochabamba).
conectado_directamente(uyuni, ciudad_de_tarija).
conectado_directamente(ciudad_de_tarija, uyuni).
conectado_directamente(ciudad_de_tarija, villamontes).
conectado_directamente(villamontes, ciudad_de_tarija).
conectado_directamente(ciudad_de_santacruz, san_jose_de_chiquitos).
conectado_directamente(puerto_suarez, san_jose_de_chiquitos).
conectado_directamente(san_jose_de_chiquitos, puerto_suarez).
conectado_directamente(ciudad_de_santa_cruz, trinidad).
conectado_directamente(ciudad_de_tarija, sucre).

% SE CONECTA DIRECTO
conectado_directamente(la_paz, pando).
conectado_directamente(la_paz, oruro).
conectado_directamente(la_paz, cochabamba).
conectado_directamente(la_paz, beni).
conectado_directamente(pando, la_paz).
conectado_directamente(pando, beni).
conectado_directamente(beni, la_paz).
conectado_directamente(beni, pando).
conectado_directamente(beni, cochabamba).
conectado_directamente(beni, santa_cruz).
conectado_directamente(cochabamba, la_paz).
conectado_directamente(cochabamba, beni).
conectado_directamente(cochabamba, santa_cruz).
conectado_directamente(cochabamba, oruro).
conectado_directamente(cochabamba, potosi).
conectado_directamente(cochabamba, chuquisaca).
conectado_directamente(oruro, la_paz).
conectado_directamente(oruro, cochabamba).
conectado_directamente(oruro, potosi).
conectado_directamente(oruro, chuquisaca).
conectado_directamente(potosi, oruro).
conectado_directamente(potosi, cochabamba).
conectado_directamente(potosi, chuquisaca).
conectado_directamente(potosi, tarija).
conectado_directamente(chuquisaca, santa_cruz).
conectado_directamente(chuquisaca, cochabamba).
conectado_directamente(chuquisaca, potosi).
conectado_directamente(chuquisaca, tarija).
conectado_directamente(tarija, chuquisaca).
conectado_directamente(tarija, potosi).


% Consulta para  llegar directamente a 'sucre'
ciudades_con_acceso_directo_a_sucre(CiudadOrigen) :-conectado_directamente(CiudadOrigen, sucre).

% Consulta a que ciudad se puede viajar
ciudades_destino_desde(CiudadOrigen, CiudadDestino) :-conectado_directamente(CiudadOrigen, CiudadDestino).
ciudades_destino_desde(CiudadOrigen, CiudadDestino) :-conectado_directamente(CiudadOrigen, CiudadIntermedia),ciudades_destino_desde(CiudadIntermedia, CiudadDestino).


ciudades_con_acceso_directo_a_sucre(CiudadOrigen) :-conectado_directamente(CiudadOrigen, CiudadIntermedia),ciudades_con_acceso_directo_a_sucre(CiudadIntermedia).