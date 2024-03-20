%EXAMEN HITO 2 - HERRERA GABRIEL

%esProducto
esProducto(lg510).
esProducto(samsungb125).
esProducto(lg_batimix).
esProducto(samsungl200).
esProducto(bose).
esProducto(lg).
esProducto(xbox360).
esProducto(xbox_one).
esProducto(ps2).
esProducto(ps3).
esProducto(omen560).
esProducto(pavilian15a).
esProducto(destruinator500).


%CATEGORIAS PRINCIPALES
esDeLaCategoria(electrodomestico, producto).
esDeLaCategoria(entretenimiento, producto).
esDeLaCategoria(computadoras, producto).
esDeLaCategoria(batidora, electrodomestico).
esDeLaCategoria(lavadora, electrodomestico).
esDeLaCategoria(parlantes, entretenimiento).
esDeLaCategoria(consolas, entretenimiento).
esDeLaCategoria(laptop, computadoras).
esDeLaCategoria(escritorio, computadoras). 
esDeLaCategoria(xbox, consolas).
esDeLaCategoria(plays, consolas).
esDeLaCategoria(dell, laptop).
esDeLaCategoria(hp, laptop).
esDeLaCategoria(dell, escritorio).
esDeLaCategoria(hp, escritorio).
esDeLaCategoria(marca_patito, escritorio).

%PRODUCTO
esUnProducto(lg510, batidora).
esUnProducto(samsungb125, batidora).
esUnProducto(lg_batimix, lavadora).
esUnProducto(samsungl200, lavadora).

esUnProducto(bose, parlantes).
esUnProducto(lg, parlantes).

esUnProducto(xbox360, xbox).
esUnProducto(xbox_one, xbox).
esUnProducto(ps2, plays).
esUnProducto(ps3, plays).


esUnProducto(omen560, dell).
esUnProducto(pavilian15a, hp).

esUnProducto(omen560, dell).
esUnProducto(pavilian15a, hp).
esUnProducto(destruinator500, marca_patito).

%HECHOS CLIENTE
esUnCliente(maria, cliente).
esUnCliente(juana, cliente).
esUnCliente(jeremias, cliente).

%CARACTERISTICAS
tieneCaracteristicas(lg510,blanco).
tieneCaracteristicas(lg510,barato).
tieneCaracteristicas(lg510,bueno).

tieneCaracteristicas(samsungb125,negro).
tieneCaracteristicas(samsungb125,caro).
tieneCaracteristicas(samsungb125,malo).

tieneCaracteristicas(lg_batimix,rojo).
tieneCaracteristicas(lg_batimix,barato).
tieneCaracteristicas(lg_batimix,malo).

tieneCaracteristicas(samsungl200,negro).
tieneCaracteristicas(samsungl200,caro).
tieneCaracteristicas(samsungl200,bueno).

tieneCaracteristicas(bose,blanco).
tieneCaracteristicas(bose,caro).
tieneCaracteristicas(bose,negro).

tieneCaracteristicas(lg,rojo).
tieneCaracteristicas(lg,barato).
tieneCaracteristicas(lg,malo).

tieneCaracteristicas(xbox360,barato).
tieneCaracteristicas(xbox360,verde).
tieneCaracteristicas(xbox360,malo).

tieneCaracteristicas(xbox_one,caro).
tieneCaracteristicas(xbox_one,verde).
tieneCaracteristicas(xbox_one,bueno).

tieneCaracteristicas(ps2,negro).
tieneCaracteristicas(ps2,barato).
tieneCaracteristicas(ps2,bueno).

tieneCaracteristicas(ps3,negro).
tieneCaracteristicas(ps3,barato).
tieneCaracteristicas(ps3,bueno).

tieneCaracteristicas(omen560,plateado).
tieneCaracteristicas(omen560,barato).
tieneCaracteristicas(omen560,malo).

tieneCaracteristicas(pavilian15a,plateado).
tieneCaracteristicas(pavilian15a,caro).
tieneCaracteristicas(pavilian15a,bueno).

tieneCaracteristicas(destruinator500,plateado).
tieneCaracteristicas(destruinator500,barato).
tieneCaracteristicas(destruinator500,bueno).


%REGLAS 
producto(X) :-esUnProducto(X, _).  

cliente(X) :- esUnCliente(X, _).

categoria(X) :- esDeLaCategoria(X, _).


productos_negros(Producto) :- tieneCaracteristicas(Producto, negro).
productos_blancos(Producto) :- tieneCaracteristicas(Producto, blanco).
productos_rojos(Producto) :- tieneCaracteristicas(Producto, rojo).
productos_verdes(Producto) :- tieneCaracteristicas(Producto, verde).
productos_plateados(Producto) :- tieneCaracteristicas(Producto, plateado).


productos_buenos(Producto) :- tieneCaracteristicas(Producto, bueno).
productos_malos(Producto) :- tieneCaracteristicas(Producto, malo).
productos_caros(Producto) :- tieneCaracteristicas(Producto, caro).
productos_baratos(Producto) :- tieneCaracteristicas(Producto, barato).

