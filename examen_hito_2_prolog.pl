%EXAMEN HITO 2 - HERRERA GABRIEL

%PRINCIPAL
Tiene(tienda, producto).
Tiene(tienda, clientes).

%esProducto
EsProducto(lg510).
EsProducto(samsungb125).
EsProducto(lg_batimix).
EsProducto(samsungl200).
EsProducto(bose).
EsProducto(lg).
EsProducto(xbox360).
EsProducto(xbox_one).
EsProducto(ps2).
EsProducto(ps3).
EsProducto(omen560).
EsProducto(pavilian15a).
EsProducto(destruinator500).
%esCategoria 

%CATEGORIAS PRINCIPALES
EsDeLaCategoria(electrodomestico, producto).
EsDeLaCategoria(entretenimiento, producto).
EsDeLaCategoria(computadoras, producto).

EsDeLaCategoria(batidora, electrodomestico).
EsDeLaCategoria(lavadora, electrodomestico).

EsDeLaCategoria(parlantes, entretenimiento).
EsDeLaCategoria(consolas, entretenimiento).

EsDeLaCategoria(laptop, computadoras).
EsDeLaCategoria(escritorio, computadoras). 

EsDeLaCategoria(xbox, consolas).
EsDeLaCategoria(plays, consolas).

EsDeLaCategoria(dell, laptop).
EsDeLaCategoria(hp, laptop).

EsDeLaCategoria(dell, escritorio).
EsDeLaCategoria(hp, escritorio).
EsDeLaCategoria(marca_patito, escritorio).

%PRODUCTO
EsUnProducto(lg510, batidora).
EsUnProducto(samsungb125, batidora).
EsUnProducto(lg_batimix, lavadora).
EsUnProducto(samsungl200, lavadora).

EsUnProducto(bose, parlantes).
EsUnProducto(lg, parlantes).
% EsUnProducto(xbox, consolas). QUEDA
% EsUnProducto(plays, consolas). UUEDA
EsUnProducto(xbox360, xbox).
EsUnProducto(xbox_one, xbox).
EsUnProducto(ps2, plays).
EsUnProducto(ps3, plays).

% EsUnProducto(dell, laptop). QUEDA
% EsUnProducto(hp, laptop). QUEDA
EsUnProducto(omen560, dell).
EsUnProducto(pavilian15a, hp).
% EsUnProducto(dell, escritorio). q
% EsUnProducto(hp, escritorio). q
% EsUnProducto(marca_patito, escritorio). q
EsUnProducto(omen560, dell).
EsUnProducto(pavilian15a, hp).
EsUnProducto(destruinator500, marca_patito).

%HECHOS CLIENTE
EsUnCliente(maria, cliente).
EsUnCliente(juana, cliente).
EsUnCliente(jeremias, cliente).

%CARACTERISTICAS
TieneCaracteristicas(lg510,blanco).
TieneCaracteristicas(lg510,barato).
TieneCaracteristicas(lg510,bueno).

TieneCaracteristicas(samsungb125,negro).
TieneCaracteristicas(samsungb125,caro).
TieneCaracteristicas(samsungb125,malo).

TieneCaracteristicas(lg_batimix,rojo).
TieneCaracteristicas(lg_batimix,barato).
TieneCaracteristicas(lg_batimix,malo).

TieneCaracteristicas(samsungl200,negro).
TieneCaracteristicas(samsungl200,caro).
TieneCaracteristicas(samsungl200,bueno).

TieneCaracteristicas(bose,blanco).
TieneCaracteristicas(bose,caro).
TieneCaracteristicas(bose,negro).

TieneCaracteristicas(lg,rojo).
TieneCaracteristicas(lg,barato).
TieneCaracteristicas(lg,malo).

TieneCaracteristicas(xbox360,barato).
TieneCaracteristicas(xbox360,verde).
TieneCaracteristicas(xbox360,malo).

TieneCaracteristicas(xbox_one,caro).
TieneCaracteristicas(xbox_one,verde).
TieneCaracteristicas(xbox_one,bueno).

TieneCaracteristicas(ps2,negro).
TieneCaracteristicas(ps2,barato).
TieneCaracteristicas(ps2,bueno).

TieneCaracteristicas(ps3,negro).
TieneCaracteristicas(ps3,barato).
TieneCaracteristicas(ps3,bueno).

TieneCaracteristicas(omen560,plateado).
TieneCaracteristicas(omen560,barato).
TieneCaracteristicas(omen560,malo).

TieneCaracteristicas(pavilian15a,plateado).
TieneCaracteristicas(pavilian15a,caro).
TieneCaracteristicas(pavilian15a,bueno).

TieneCaracteristicas(destruinator500,plateado).
TieneCaracteristicas(destruinator500,barato).
TieneCaracteristicas(destruinator500,bueno).


%REGLAS 
% Regla para identificar los productos
esProducto(Producto) :- EsProducto(Producto).

% Regla para identificar las categorías d
esCategoria(Producto, Categoria) :- EsDeLaCategoria(Categoria, Producto).

% Regla para identificar los clientes
esCliente(Cliente) :- EsUnCliente(Cliente, cliente).
