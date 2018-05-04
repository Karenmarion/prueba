*****************************************************************************************************
*******************************GASTOS ALIMENTICIOS Y NO ALIMENTICIOS
*****************************************************************************************************

*NOTA: NO SE INCLUYEN DENTRO DE LAS EROGACIONES MULTAS NI SERVICIOS FINANCIEROS
*ES DECIR; NO CONSIDERAR:
*12700107	 " Multas por infracciones             "
*1270010701	 " Multas por infracciones             "
*ni CODB:
*1261 "Servicios de intermediaci√≥n financiera medidos indirectamente" 
*1262 "Otros servicios financieros n.e.p." 

****************************************************
**********************PREPARACION DE BASE DTA GASTOS
****************************************************

*********************************
*Codigo de Productos (4 c√≥digos)*
*********************************

 ijijijijij
*VERIFICAR EL CAMBIO~~~~hfffhfhfh~~

cap drop codigo_b
gen codigo_b=substr(codigo, 1,4) //porque codigo es 0XXXXXXXXX (inicia la cifra con 0)
#delimit ;
destring codigo_b, replace;
label define codigo_b 0111 "Pan y Cereales"
 0112 "Carnes" 
 0113 "Pescado" 
 0114 "Leche, queso y huevos" 

 0116 "Frutas" 
 0117 "Legumbres - Hortalizas y otros vegetales" 
 0118 "Az√∫car, mermelada, miel, chocolate y dulces de az√∫car" 
 0119 "Productos alimenticios n.e.p." 
 0121 "Caf√©, t√© y cacao" 
 0122 "Aguas minerales, refrescos, jugos de frutas y de legumbres" 
 0211 "Bebidas destiladas" 
 0212 "Vino" 
 0213 "Cerveza" 
 0220 "Tabaco" 
 0230 "Estupefacientes" 
 0311 "Materiales para prendas de vestir" 
 0312 "Prendas de vestir" 
 0313 "Otros artículos y accesorios de vestir" 
 0314 "Limpieza, reparaci√≥n y alquiler de prendas de vestir" 
 0321 "Zapato y otros calzados" 
 0322 "Reparaci√≥n y alquiler de calzados" 

 0411 "Alquileres efectivos pagados por los inquilinos" 
 0421 "Alquiler imputado de los propietarios ocupantes" 
 0422 "Otros alquileres imputados" 
 0431 "Materiales para la conservaci√≥n y la reparaci√≥n de la vivienda" 
 0432 "Servicios para la conservaci√≥n y la reparaci√≥n de la vivienda" 
 0438 "Otros artículos y/o gastos en reparaci√≥n y mejora de la vivienda" 
 0441 "Suministro de agua" 
 0442 "Recogida de basura" 
 0443 "Alcantarillado" 
 0444 "Otros servicios relacionados con la vivienda n.e.p." 
 0451 "Electricidad" 
 0452 "Gas" 
 0453 "Combustibles líquidos" 
 0454 "Combustibles s√≥lidos" 
 0455 "Energía cal√≥rica" 

 0511 "Muebles y accesorios" 
 0512 "Alfombras y otros materiales para pisos" 
 0513 "Reparaci√≥n de muebles, accesorios y materiales para pisos" 
 0520 "Productos textiles para el hogar" 
 0531 "Artefactos para el hogar grandes, el√©ctricos o no" 
 0532 "Artefactos el√©ctricos para el hogar peque√±os" 
 0533 "Reparaci√≥n de artefactos para el hogar" 
 0540 "Artículos de vidrio y cristal, vajilla y utensilios para el hogar" 
 0551 "Herramientas y equipo grandes" 
 0552 "Herramientas peque√±as y accesorios diversos (SD)" 
 0561 "Bienes para el hogar no duraderos" 
 0562 "Servicio dom√©sticos y para el hogar" 
 0611 "Productos farmac√©uticos" 
 0612 "Otros productos m√©dicos" 
 0613 "Artefactos y equipo terap√©uticos" 
 0621 "Servicios m√©dicos" 
 0622 "Servicios dentales" 
 0623 "Servicios param√©dicos" 
 0630 "Servicios de hospital" 
 0711 "Vehículos a motor" 
 0712 "Motocicletas" 
 0713 "Bicicletas" 
 0721 "Piezas de repuesto y accesorios para equipo de transporte personal" 
 0722 "Combustible y lubricantes para equipo de transporte personal" 
 0723 "Conservaci√≥n y reparaci√≥n de equipo de transporte personal" 
 0724 "Otros servicios relativos al equipo de transporte personal" 
 0731 "Transporte de pasajeros por ferrocarril" 
 0732 "Transporte de pasajeros por carretera" 
 0733 "Transporte de pasajeros por aire" 
 0734 "Transporte de pasajeros por mar y cursos de agua interiores" 
 0735 "Transporte combinado de pasajeros" 
 0736 "Otros servicios de transporte adquiridos" 
 0810 "Servicios postales" 
 0820 "Equipo telef√≥nico y de facsímile" 
 0830 "Servicios telef√≥nicos y de facsímile" 
 0911 "Equipo para la recepci√≥n, grabaci√≥n y reproducci√≥n de sonido e im√°genes" 
 0912 "Equipo fotogr√°fico y cinematogr√°fico e instrumentos √≥pticos" 
 0913 "Equipo de procesamiento e informaci√≥n" 
 0914 "Medios para grabaci√≥n" 
 0915 "Reparaci√≥n de equipo audiovisual, fotogr√°fico y de procesamiento de informaci√≥n" 
 0921 "Artefactos duraderos importantes para recreaci√≥n en exteriores" 
 0922 "Instrumentos musicales y equipos duraderos importantes para recreaci√≥n en interiores" 
 0923 "Conservaci√≥n y reparaci√≥n de otros bienes duraderos importantes para recreaci√≥n y cultura (Grupo 09.2)" 
 0931 "Juegos, juguetes y aficiones" 
 0932 "Equipo de deportes, campamentos y recreaci√≥n al aire libre" 
 0933 "Jardines, plantas y flores" 
 0934 "Animales dom√©sticos y productos conexos" 
 0935 "Servicio de veterinaria y de otro tipo para animales dom√©sticos" 
 0941 "Servicios de recreaci√≥n y deportivos" 
 0942 "Servicios culturales" 
 0943 "Juegos de azar" 
 0951 "Libros" 
 0952 "Diarios y peri√≥dicos" 
 0953 "Material impreso diverso" 
 0954 "Papel y √∫tiles de oficina y materiales de dibujo" 
 0960 "Paquetes turísticos" 
 1010 "Ense√±anza preescolar o ense√±anza primaria" 
 1020 "Ense√±anza secundaria" 
 1030 "Ense√±anza postsecundaria, no terciaria" 
 1040 "Ense√±anza terciaria" 
 1050 "Ense√±anza no atribuible a ning√∫n nivel" 
 
 1111 "Restaurantes, caf√©s y establecimientos similares" 
 1112 "Comedores" 
 
 1120 "Servicios de alojamiento" 
 1211 "Salones de peluquería y establecimientos de cuidados personales" 
 1212 "Aparatos el√©ctricos para el cuidado personal" 
 1213 "Otros aparatos, artículos y productos para la atenci√≥n personal" 
 1220 "Prostituci√≥n" 
 1231 "Joyería, relojes de pared y relojes de pulsera" 
 1232 "Otros efectos personales" 
 1240 "Protecci√≥n social" 
 1251 "Seguro de vida" 
 1252 "Seguro relacionado con la vivienda" 
 1253 "Seguro relacionado con la salud" 
 1254 "Seguro relacionado con el transporte" 
 1255 "Otros seguros" 
 
 1261 "Servicios de intermediaci√≥n financiera medidos indirectamente" 
 1262 "Otros servicios financieros n.e.p." 
 
 1270 "Otros servicios n.e.p." 
 ;
label values codigo_b codigo_b ;
#delimit cr
rename codigo_b codb
label var codb "Codigo de prod/serv agreg"

*********************************
*Codigo de Productos (5 c√≥digos)*
*********************************
cap drop codigo_c
gen codigo_c=substr(codigo, 1,6) 
#delimit ;
destring codigo_c, replace;
label define codigo_c   11101 "Pan y otros productos de panadería"	
	  11102 "Productos de pastelería"	 
	  11103 "Cereales en grano"	 
	  11104 "Harinas"	 
	  11105 "Otros productos preparados en base de harinas y/o cereales"	 
	  11106 "Fideo y pastas"	 
	  11201 "Carne fresca, refrigerada o congelada de ganado bovino (res)"	 
	  11202 "Carne fresca, refrigerada o congelada de ganado porcino"	 
	  11203 "Carne fresca, refrigerada o congelada de ganado ovino"	 
	  11204 "Carne fresca, refrigerada o congelada de ganado caprino"	 
	  11205 "Carne fresca, refrigerada o congelada de ganado cam√©lido"	 
	  11206 "Carne fresca, refrigerada o congelada de aves de corral"	 
	  11207 "Otras carnes"	 
	  11208 "Despojos comestibles frescos, refrigerados o congelados"	 
	  11209 "Carnes secas, saladas o ahumadas"	 
	  11210 "Productos c√°rnicos embutidos"	 
	  11211 "Productos c√°rnicos pre elaborados"	 
	  11212 "Animales y aves de corral comprados vivos para su consumo como alimento"	 
	  11301 "Pescado"	 
	  11401 "Leches y otros productos l√°cteos"	 
	  11402 "Quesos y cuajada"	 
	  11403 "Productos l√°cteos no de leche de vaca"	 
	  11404 "Huevos y productos derivados preparados íntegramente con huevos"	 
	  11501 "Aceites"	 
	  11502 "Mantequilla y productos derivados"	 
	  11503 "Grasas comestibles/manteca"	 
	  11601 "Frutas frescas, refrigeradas o congeladas"	 
	  11602 "Frutas y partes de frutas deshidratadas/Fruta seca"	 
	  11603 "Frutas en conserva y productos a base de frutas"	 
	  11701 "Legumbres - Hortalizas frescas, refrigeradas o congeladas"	 
	  11702 "Papas y otros tub√©rculos frescos o refrigerados"	 
	  11703 "Legumbres secas y productos a base de legumbres conservados o procesados"	 
	  11704 "Productos de tub√©rculos secos, procesados y leguminosas."	 
	  11705 "Frutos o granos oleaginosos"	 
	  11706 "Ca√±a de az√∫car"	 
	  11801 "Az√∫car, mermelada, miel, chocolate y dulces de az√∫car"	 
	  11802 "Mermeladas, compotas, jaleas, pur√©s y pastas de frutas"	 
	  11803 "Miel natural y artificial"	 
	  11804 "Chocolates en barras o tabletas, dulces y confitería"	 
	  11805 "Hielo comestible, helados y sorbetes"	 
	  11901 "Sal, especias, hierbas culinarias, salsas, condimentos, aderezos"	 
	  11902 "Preparados de polvos de hornear, levadura, postres, sopas, caldos, consom√©s"	 
	  11903 "Alimentos para lactantes homogeneizados y preparados diet√©ticos"	 
	  11904 "Productos preparados y/o cocidos listos para el consumo sometidos a procesos de conservaci√≥n, enlatado o congelado"	 
	  11999 "Otros productos alimenticios n.e.p."	 
	  12101 "Caf√©"	 
	  12102 "Te, mate y otros productos vegetales para infusiones"	 
	  12103 "Cacao, edulcorado o no y polvos a base de chocolate"	 
	  12201 "Aguas minerales o de manantial que se venda envasada"	 
	  12202 "Bebidas gaseosas"	 
	  12203 "Jugos de frutas y de hortalizas"	 
	  12204 "Jarabes y concentrados para la preparaci√≥n de bebidas"	 
	  12205 "Bebidas energizantes y deportivas"	 
	  12206 "Otras bebidas no alcoh√≥licas"	 
	  21101 "Bebidas destiladas"	 
	  21201 "Vino, sidra y perada incluido el sake"	 
	  21301 "Cerveza de todas sus clases consumidas dentro del hogar"	 
	  22001 "Tabaco"	 
	  23001 "Estupefacientes"	  //no hay este codigo en la encuesta
	  31101 "Telas para confeccionar prendas de vestir"	 
	  31102 "Fibra de lana y lana"	 
	  31188 "Otras telas, hilados o auxiliares (Especifique)"	 
	  31201 "Prendas de vestir"	 
	  31202 "Prendas de vestir deportivas"	 
	  31203 "Prendas de vestir interiores"	 
	  31204 "Prendas de dormir"	 
	  31205 "Prendas de vestir para beb√©"	 
	  31206 "Otras prendas de vestir"	 
	  31301 "Accesorios del vestir"	 
	  31302 "Otros artículos relacionados con la confecci√≥n de prendas de vestir"	 
	  31401 "Limpieza en seco, lavandería y tinte de prendas de vestir"	 
	  31402 "Reparaci‚Äîn y modificaci‚Äîn de prendas de vestir"	 
	  31403 "Alquiler de prendas de vestir"	 
	  32101 "Calzado"	 
	  32201 "Reparaci√≥n de calzados"	 
	  41101 "Alquiler de la vivienda"	 
	  41201 "Otros alquileres efectivos"	  //no hay para este codigo
	  42101 "Alquiler imputado de la vivienda"	  //no hay para este codigo
	  42201 "Otros alquileres imputados de la vivienda"	  //no hay para este codigo
	  43101 "Materiales de la conservaci√≥n y la reparaci√≥n de la vivienda"	 
	  43201 "Servicios para la conservaci√≥n y la reparaci√≥n de la vivienda"	 
	  43888 "Otros artículos y/o gastos en reparaci√≥n y mejora de la vivienda (Especifique)"	 
	  44101 "Suministro de agua potable"	 
	  44102 "Suministro de agua no potable"	  // no hay
	  44201 "Servicio de recogida y eliminaci√≥n de basura"	 
	  44301 "Alcantarillado"	 
	  44401 "Otros servicios relacionados con la vivienda n.e.p."	 
	  44402 "Servicios de seguridad"	 
	  44403 "Gastos de administraci√≥n y mantenimiento de edificios"	 
	  45101 "Electricidad"	 
	  45201 "Servicio de suministro de gas natural por red"	 
	  45202 "Servicio de suministro de gas licuado y recipiente de almacenamiento"	 
	  45301 "Combustibles líquidos"	 
	  45401 "Combustibles s√≥lidos"	 
	  45501 "Energía cal√≥rica"	  //no hay
	  51101 "Muebles en general"	 
	  51102 "Colchones y somieres"	 
	  51103 "Equipo de iluminaci√≥n"	 
	  51104 "Cuadros, esculturas, grabados, tapices y otros objetos artísticos"	 
	  51201 "Alfombras y otros materiales para pisos"	 
	  51202 "Colocaci√≥n de alfombras y otros materiales similares para pisos"	  //n ohay
	  51301 "Reparaci√≥n de muebles, accesorios y materiales para pisos"	 
	  52001 "Productos textiles para el hogar"	 
	  52002 "Productos textiles de cama"	 
	  52003 "Productos textiles de mesa, de tocador y de ba√±o"	 
	  52004 "Otros productos textiles para el hogar"	 
	  52005 "Reparaci√≥n de productos textiles para el hogar (Clase 0520)"	 
	  52088 "Manteles, tapetes y fundas para muebles,"	 
	  52089 "Otros art‚Äôculos de manteler‚Äôa y mercer‚Äôa (especif‚Äôque),"	 
	  53101 "Artefactos para la conservaci√≥n de alimentos"	 
	  53102 "Artefactos para la limpieza de ropa e higiene personal"	 
	  53103 "Artefactos para la preparaci√≥n de alimentos"	 
	  53104 "Artefactos para la limpieza en el hogar"	 
	  53105 "Artefactos el√©ctricos para el tratamiento del ambiente en el hogar"	 
	  53106 "Otros artefactos para el hogar grandes, el√©ctricos o no"	 
	  53107 "Servicio de instalaci√≥n de artefactos grandes"	  //nno hay
	  53188 "Estufa (gas o el√©ctrica)"	 
	  53201 "Artefactos el√©ctricos para el hogar peque√±os"	 
	  53301 "Reparaci√≥n de artefactos para el hogar"	 
	  54001 "Artículos de vidrio, cristal, cer√°mica, porcelana y otros materiales para el hogar"	 
	  54002 "Cubertería y platería (platos)"	 
	  54003 "Utensilios de cocina que no sean el√©ctricos y artefactos"	 
	  54004 "Artículos para el hogar, que no sean el√©ctricos, y cualquier tipo de material"	 
	  54005 "Servicio de reparaci√≥n de ese tipo de artículos (Clase 0540)"	  // no hay
	  54088 "Otros artículos de cristalería, vajilla y cubiertos (Especifique)"	 
	  55101 "Herramientas y equipo grandes"	 
	  55102 "Reparaci√≥n de herramientas y equipos grandes (Clase 0551)"	 
	  55201 "Herramientas de mano"	 
	  55202 "Accesorios para puertas"	 
	  55203 "Accesorios el√©ctricos peque√±os"	 
	  55204 "Servicios de reparaci√≥n de herramientas peque√±as y accesorios diversos (Clase 0552)"	 
	  55288 "Otros accesorios diversos (Especifique)"	 
	  56101 "Productos de limpieza y conservaci√≥n del hogar"	 
	  56102 "Artículos de limpieza en el hogar"	 
	  56103 "Productos de papel para el hogar"	 
	  56104 "Otros artículos para el hogar no duraderos"	 
	  56201 "Servicios dom√©sticos a cargo de personal pagado"	 
	  56202 "Servicios para el hogar"	 
	  56203 "Alquiler de mobiliario y accesorios para el hogar"	 
	  61101 "Productos farmac≈Ωuticos"	 
	  61201 "Otros productos m√©dicos"	 
	  61301 "Artefactos y equipo terap√©uticos"	 
	  61302 "Reparaci√≥n de artefactos y equipo terap√©utico (Clase 0613)"	  // no hay
	  62101 "Servicios m√©dicos"	 
	  62201 "Servicios dentales"	 
	  62301 "Servicios param√©dicos"	 
	  63001 "Servicios de hospital"	 
	  71101 "Vehículos a motor"	 
	  71201 "Motocicletas"	 
	  71301 "Bicicletas"	 
	  71401 "Vehículos de tracci√≥n animal"	  //no hay
	  72101 "Piezas de repuesto para equipo de transporte personal"	 
	  72102 "Accesorios para equipo de transporte personal"	 
	  72201 "Combustible y lubricantes para equipo de transporte personal"	 
	  72301 "Conservaci√≥n y reparaci√≥n de equipo de transporte personal"	 
	  72401 "Otros servicios relativos al equipo de transporte personal"	 
	  73101 "Transporte de pasajeros por ferrocarril"	 
	  73201 "Transporte urbano de pasajeros"	 
	  73202 "Transporte urbano por contrato"	 
	  73203 "Transporte interurbano"	 
	  73204 "Transporte escolar"	 
	  73205 "Tarjeta magn√©tica transporte terrestre"	  //no hay
	  73206 "Transporte terrestre internacional"	 
	  73207 "Alquiler de vehículos en general con conductor"	 
	  73208 "Transporte de telef√©rico urbano y suburbano"	 
	  73209 "Transporte de empleados"	 
	  73301 "Transporte de pasajeros por aire"	 
	  73401 "Transporte de pasajeros por mar y cursos de agua interiores"	 
	  73501 "Transporte combinado de pasajeros"	  //no hay
	  73601 "Otros servicios de transporte adquiridos"	 
	  81001 "Servicios postales"	 
	  82001 "Equipo telef√≥nico y de facsímile"	 
	  82002 "Servicio de reparaci√≥n de tel√©fonos y otros similares"	 
	  83001 "Instalaci√≥n y subscripci√≥n del servicio telef√≥nico"	 
	  83002 "Servicio de telefonía fija"	 
	  83003 "Servicio de telefonía m√≥vil"	 
	  83004 "Servicio de internet"	 
	  83005 "Servicio de telefonía p√∫blica"	 
	  83006 "Servicio de internet p√∫blico"	 
	  83007 "Servicios de alquiler de tel√©fonos y similares"	  //no hay
	  83008 "Paquete integrado de tecnología de informaci√≥n y comunicaci√≥n (TIC)"	 
	  83009 "Servicio de transferencia de dinero mediante billetera m√≥vil"	  //no hay
	  91101 "Equipo para la recepci√≥n, grabaci√≥n y reproducci√≥n de im√°genes"	 
	  91102 "Equipo para la recepci√≥n, grabaci√≥n y reproducci√≥n de sonido"	 
	  91201 "Equipo fotogr√°fico y cinematogr√°fico e instrumentos √≥pticos"	 
	  91301 "Equipo de procesamiento e informaci√≥n"	 
	  91401 "Medios para grabaci√≥n"	 
	  91501 "Reparaci√≥n de equipo audiovisual, fotogr√°fico y de procesamiento de informaci√≥n"	 
	  92101 "Artefactos duraderos importantes para recreaci√≥n en exteriores"	  //no  hay
	  92201 "Instrumentos musicales"	 
	  92202 "Equipos duraderos importantes para recreaci√≥n en interiores"	 
	  92301 "Servicio de conservaci√≥n y reparaci√≥n de otros artefactos duraderos importantes para recreaci√≥n y cultura (Grupo 092)"	 
	  93101 "Juegos, juguetes y aficiones"	 
	  93102 "Art‚Äôculos para la colecci‚Äîn"	 
	  93201 "Equipo de deportes, campamentos y recreaci√≥n al aire libre"	 
	  93202 "Reparaci√≥n de equipo de deportes, campamentos y recreaci√≥n al aire libre (Clase 0932)"	 
	  93301 "Jardines, plantas y flores"	 
	  93401 "Animales dom√©sticos"	 
	  93402 "Productos conexos a los animales dom√©sticos"	 
	  93403 "Medicamentos veterinarios"	  //no hay
	  93488 "Compra de productos veterinarios (medicamentos y/o limpieza)"	 
	  93501 "Servicio de veterinaria y de otro tipo para animales dom√©sticos"	 
	  94101 "Servicios de recreaci√≥n y deportivos"	 
	  94201 "Cines, teatros, salas de concierto, museos, bibliotecas, parques nacionales"	 
	  94202 "Servicios fotogr√°ficos"	 
	  94203 "Servicio de transmisiones de televisi‚Äîn"	 
	  94204 "Otros servicios culturales"	 
	  94301 "Juegos de azar"	 
	  95101 "Libros"	 
	  95201 "Diarios, peri√≥dicos y revistas"	 
	  95301 "Material impreso diverso"	 
	  95401 "Papel y √∫tiles de oficina y materiales de dibujo"	 
	  96001 "Viajes con paquete turístico"	 
	  96002 "Viajes sin paquete turístico"	 
	  96088 "Otros gastos en turismo, transporte o viajes, museos, espect√°culos (Especifique)"	 
	  101001 "Ense√±anza preescolar o ense√±anza primaria"	 
	  102001 "Ense√±anza secundaria"	 
	  103001 "Educaci√≥n en carreras cortas en institutos"	 
	  103002 "Cursos de nivelaci√≥n y preparaci√≥n para ingresar a la universidad"	 
	  104001 "Ense√±anza terciaria"	 
	  105001 "Ense√±anza no atribuible a ning√∫n nivel"	 
	  105002 "Otros gastos complementarios en educaci√≥n"	 
	  111101 "Suministro de comidas en establecimientos tipo local"	 
	  111102 "Expendio de comida en mercado o puesto"	 
	  111103 "Expendio de comidas por ambulantes"	 
	  111104 "Suministro de comida y bebidas por concesionarios"	 
	  111105 "Expendio de comida para el consumo fuera de sus locales o con entrega a domicilio"	 
	  111106 "Suministro de comida y bebidas bajo contrato (Catering)"	 
	  111107 "Expendio de comida y bebidas en medios de transporte p√∫blico"	 
	  111108 "Expendio de bebidas en locales"	 
	  111109 "Expendio de bebidas en puestos fijos, m√≥viles"	 
	  111110 "Expendio de jugos y bebidas por ambulantes"	 
	  111111 "Venta de comidas por m√°quinas autom√°ticas"	  //no hay
	  111112 "Suministro de comidas y bebidas en lugar no especificado"	 
	  111201 "Comedores"	 
	  112001 "Servicios de alojamiento"	 
	  121101 "Salones de peluquería y establecimientos de cosm√©tica personal"	 
	  121102 "Establecimientos de cuidados personales"	 
	  121201 "Aparatos el√©ctricos para el cuidado personal"	 
	  121202 "Reparaci√≥n de aparatos el√©ctricos para el cuidado personal (Clase 1212)"	  //nop
	  121301 "Aparatos no el√©ctricos para atenci√≥n personal"	 
	  121302 "Artículos para la higiene personal"	 
	  121303 "Productos de belleza"	 
	  121304 "Otros productos para la atenci√≥n personal"	 
	  122001 "Prostituci√≥n"	 
	  123101 "Joyería, relojes de pared y relojes de pulsera"	 
	  123201 "Artículos de viajes y otros artículos para el transporte de efectos personales:"	 
	  123202 "Artículos para beb√©s"	 
	  123203 "Artículos para fumador"	 
	  123204 "Artículos personales varios"	 
	  123205 "Artículos de funeraria"	 
	  123206 "Artículos religiosos"	 
	  123207 "Reparaci√≥n de efectos y accesorios personales (Clase 1232)"	 
	  124001 "Protecci√≥n social"	 
	  125101 "Seguro de vida"	 
	  125201 "Seguro relacionado con la vivienda"	 
	  125301 "Seguro relacionado con la salud"	 
	  125401 "Seguro relacionado con el transporte"	 
	  125599 "Otros seguros"	 
	  126101 "Servicios de intermediaci√≥n financiera medidos indirectamente"	//no consideramos 
	  126201 "Otros servicios financieros n.e.p."	  //no consideramos
	  127001 "Otros servicios n.e.p."	
	  ;	   
label values codigo_c codigo_c ;
#delimit cr
rename codigo_c codc
label var codc "Codigo de porducto/servicio global"


**GRUPOS GRANDES (1)


capture drop gCN
gen gCN=10 if codb==111
replace gCN=8 if codb==112
replace gCN=5 if codb==113
replace gCN=9 if codb==114
replace gCN=12 if codb==115
replace gCN=1 if (codb>=116 & codb<=117)
replace gCN=11 if (codb>=118 & codb<=121)
replace gCN=13 if (codb>=122 & codb<=213)
replace gCN=14 if (codb>=220 & codb<=230)
replace gCN=15 if (codb>=311 & codb<=322)
replace gCN=16 if (codb==511 | codb==513)
replace gCN=15 if (codb==512 | codb==520)
replace gCN=23 if (codb>=531 & codb<=533)
replace gCN=22 if (codb>=551 & codb<=552)
replace gCN=20 if (codb==540)
replace gCN=24 if (codb>=441 & codb<=455)
replace gCN=25 if (codb>=411 & codb<=432)
replace gCN=23 if (codb==561)
replace gCN=34 if (codb==562)
replace gCN=23 if (codb>=611 & codb<=613)
replace gCN=32 if (codb>=621 & codb<=630)

replace gCN=22 if (codb>=711 & codb<=713)

replace gCN=25 if (codb==438)

replace gCN=19 if (codb==722)
replace gCN=23 if (codb==721)

replace gCN=32 if (codb>=723 & codb<=724)

replace gCN=27 if (codb>=723 & codb<=736)
replace gCN=28 if (codb>=810 & codb<=830)
replace gCN=23 if (codb>=911 & codb<=934)

replace gCN=32 if (codb>=935 & codb<=943)
replace gCN=17 if (codb>=951 & codb<=954)

replace gCN=32 if (codb>=960 & codb<=1050)
replace gCN=33 if (codb>=1111 & codb<=1120)
replace gCN=32 if (codb==1211 | codb==1220)

replace gCN=23 if (codb>=1212 & codb<=1213)

replace gCN=23 if (codb>=1231 & codb<=1240)
replace gCN=29 if (codb>=1251 & codb<=1270)



label define gCN  1 "Agr no industriales"					, add
label define gCN  2 "Agr industriales"	, add
label define gCN  5 "silvicultura pesca"	, add
label define gCN  19 "Productos de refinacion petroleo"	, add
label define gCN  8 "carnes"	, add
label define gCN  9 "lacteos"	, add
label define gCN  10 "molineria panaderia"	, add
label define gCN  11 "azucar"	, add
label define gCN  12 "alimentos diversos"	, add
label define gCN  13 "bebidas"	, add
 
label define gCN  14 "Tabaco"	, add
label define gCN  15 "Textiles (ropa y calzados)"	, add
label define gCN  16 "Madera (muebles)"	, add
label define gCN  17 "Papeleria"	, add
label define gCN  20 "Prod minerales no metalicos"	, add
label define gCN  22 "metalic maq equipo"	, add
label define gCN  23 "Otras manufacturas"	, add
label define gCN  24 "Electricidad gas y agua"	, add
label define gCN  25 "Construccion"	, add
label define gCN  27 "Transporte"	, add
label define gCN  28 "Comunicaciones (telf, cel,...)"	, add
label define gCN  29 "Servicios financieros"	, add
label define gCN  31 "prop vivienda"	, add
label define gCN  32 "Servicios comunales sociales"	, add
label define gCN  33 "Restaurantes alojamientos", add
label define gCN  34 "Servicio domestico", add
label define gCN  35 "adm publica"	, add
label values gCN gCN


*GRUPOS GRANDES (2)

capture drop gCod2
gen gCod2=11 if codb>=111 & codb<=122
replace gCod2=21 if codb>=211 & codb<=213
replace gCod2=22 if codb>=220 & codb<=230
replace gCod2=31 if codb>=311 & codb<=322
replace gCod2=41 if codb>=411 & codb<=438
replace gCod2=44 if codb>=441 & codb<=452
replace gCod2=45 if codb>=453 & codb<=455
replace gCod2=51 if codb>=511 & codb<=562
replace gCod2=61 if codb>=611 & codb<=630
replace gCod2=71 if codb>=711 & codb<=721
replace gCod2=72 if codb>=722 & codb<=724
replace gCod2=73 if codb>=731 & codb<=736
replace gCod2=81 if codb>=810 & codb<=830
replace gCod2=91 if codb>=911 & codb<=933
replace gCod2=93 if codb>=934 & codb<=960
replace gCod2=100 if codb>=1010 & codb<=1050
replace gCod2=110 if codb>=1111 & codb<=1112
replace gCod2=112 if codb>=1120 & codb<=1240
replace gCod2=125 if codb>=1251 & codb<=1270

label define gCod2  11 "Alimentos"					, add		//
label define gCod2  21 "bebidas"	, add						//
label define gCod2  22 "tabaco Estupef"	, add
label define gCod2  31 "vestidos calz"	, add
label define gCod2  41 "alquiler"	, add
label define gCod2  44 "serv.vivienda"	, add
label define gCod2  45 "Combustibles liq sol"	, add
label define gCod2  51 "muebles,artefactos"	, add
label define gCod2  61 "farmaceuticos"	, add
label define gCod2  71 "vehiculos"	, add
label define gCod2  72 "combustibles lubricantes"	, add
label define gCod2  73 "transporte"	, add
label define gCod2  81 "comunicaciones"	, add
label define gCod2  91 "equipos artefactos"	, add
label define gCod2  93 "libros, juegos deport"	, add
label define gCod2  100 "educacion"	, add
label define gCod2  110 "restaurantes comedores"	, add		//
label define gCod2  112 "alojamientos hoteles"	, add
label define gCod2  125 "servicios varios"	, add
label values gCod2 gCod2
 

**************************************************************************************
*GRUPOS ALIMENTOS Y NO ALIMENTOS

capture drop ga_gna
capture label drop ga_gna
gen ga_gna=1 if (codb>=111 & codb<=213) | (codb>=1111 & codb<=1112)  //alimentos y bebidas, asi como tambien comida de restaurant y comedor
replace ga_gna=2 if (codb>=220 & codb<=1050) |(codb>=1120 & codb<=1255)
replace ga_gna=2 if (codb==1270)
replace ga_gna=. if (codigo=="1270010701" | codigo=="12700107" ) 
label define ga_gna  1 "Productos alimenticios y de bebida"					, add
label define ga_gna  2 "Productos no alimenticios (excluyendo erogaciones financieras y de multas"	, add
label values ga_gna ga_gna
drop if ga_gna==.

*********************************
*Codigo de Productos (7 c√≥digos SOLO ALIMENTOS)*
*********************************
cap drop variedad
gen variedad=substr(codigo, 1,8) //porque codigo es 0XXXXXXXXX (inicia la cifra con 0)
#delimit ;
destring variedad, replace;

label define variedad 01110101     " Pan corriente              "
01110102      " Pan especial              "
01110103      " Galletas               "
01110104	 " Tostadas               "	
01110201	 " Panetón               "
01110202	 " Pastel               "
01110203	 " Torta               "
01110204      " Empanada al horno             "
01110205	 " Chambergo               "
01110206	 " Alfajores               "	
01110207	 " Bollos               "
01110208	 " Dona               "	
01110209	 " Rosca               "	
01110210	 " Prepizzas               "	
01110211	 " Bizcochuelos               "	
01110212	 " Suspiros               "	
01110213	 " Queques               "	
01110214	 " Llauchas               "	
01110215	 " Hawitas               "	
01110216	 " Cuñapé               "	
01110217	 " Tartas               "	
01110218	 " Biscochos               "	
01110219	 " Pucacapas               "	
01110220	 " Masas de hojaldre             "	
01110221     " Productos de panadería y pastelería frita          "
01110222	 " Rosquitas               "	
01110223	 " Wafles               "	
01110224	 " Pay (Pie)              "	
01110225	 " Huminta               "	
01110226	 " Rosquetes               "	
01110227	 " Rollo de queso             "	
01110228	 " Masita de desayuno escolar            "		
01110229	 " Magdalena/cupcake/muffin               "		
01110230	 " Horneado de frutas             "		
01110231	 " Horneado crocante de cereales            "		

01110299     " Otros productos de pastelería            "
01110301     " Arroz               "
01110302     " Maíz                "
01110303     " Trigo               "
01110304	 " Cañahua               "	
01110305	 " Cebada               "	

01110306     " Quinua               "
01110307     " Avena en grano             "
01110308	 " Mijo               "
01110309	 " Amaranto               "	
01110310	 " Sorgo               "	
01110311	 " Centeno               "	
01110312	 " Alpiste               "	
01110399	 " Otros cereales en grano            "	

01110401     " Harina de trigo             "
01110402     " Harina de maíz             "
01110403     " Afrecho/Afrechillo/Salvado de cereales             "
01110404	 " Harina de quinua             "		
01110405	 " Harina de avena             "	
01110406	 " Harina de mijo             "	
01110407	 " Harina de amaranto             "		
01110408	 " Harina de sorgo             "	
01110409	 " Harina de centeno             "	
01110410	 " Harina de alpiste             "	
01110411	 " Harina de cebada             "
01110412	 " Harinas de otros cereales            "
01110413	 " Harinas precocidas              "	
01110414	 " Harina de leguminosas             "	
01110415	 " Harina de frutas             "
01110416	 " Productos farináceos preparados con carne, pescado, alimentos marinos, queso, verduras o con fruta   "
01110417	 " Harina de soya             "
01110499	 " Otras harinas              "	
01110501	 " Sémolas y gránulos de cereales           "	



01110502     " Preparados obtenidos por hinchamiento, tostado o extrusión de cereales       "
01110503	 " Almidones de cereales             "
01110504	 " Maicena               "


01110505     " Avena               "
01110601     " Fideo               "
01120101     " Carne de res con hueso           "
01120102     " Carne de res sin hueso           "
01120103     " Carne de res molida corriente/especial           "
01120104	 " Hueso de res             "


01120201     " Carne fresca de ganado porcino entero o cortes especiales       "
01120301	 " Carne fresca de ganado ovino por piezas (cordero)        "	
01120302	 " Carne fresca de ganado ovino entero (cordero)         "
01120401	 " Carne fresca de ganado caprino           "	
01120501     " Carne de llama             "
01120502	 " Carne fresca de otros camélidos           "	

01120601     " Carne de pollo             "
01120602	 " Carne de pato             "
01120603	 " Carne de pavo             "
01120699	 " Carne de otras aves            "
01120701	 " Carne de conejo             "
01120702	 " Carne de especies de caza           "

01120801     " Hígado/riñón/corazón/pulmón               "
01120802	 " Cabeza               "
01120803     " Panza/libro/tripas               "
01120899     " Otros despojos comestibles de animales           "
01120901     " Carnes secas/charque/chalona              "
01120902	 " Carnes ahumadas              "

01121001     " Carnes frías/mortadela              "
01121002	 " Tocino/Panceta               "
01121003	 " Salami               "

01121004     " Chorizos               "
01121005	 " Paté/pasta de hígado             "
01121006	 " Jamón               "
01121007	 " Salchichas               "
01121008	 " Morcillas               "

01121009     " Carnes enlatadas              "
01121010	 " Picadillo               "
01121011	 " Queso de chancho / enrollado           "
01121012	 " Productos embutidos con vegetales            "
01121013	 " Embutidos dietéticos              "
01121099	 " Otros productos cárnicos embutidos            "

01121101     " Milanesas/ hamburguesas y silpanchos preparados           "
01121102     " Chicharrón pre elaborado             "
01121103	 " Albóndigas               "
01121104	 " Pavos y pollos rellenos            "
01121105	 " Nuggets de carne/de pollo/de pescado           "

01121106     " Carnes cocidas              "
01121199	 " Otros productos cárnicos pre elaborados           "
01121201	 " Animales y aves de corral comprados vivos para su consumo como alimento    " //**************************************

01130101     " Pescados frescos              "
01130102	 " Pescado refrigerado o congelado            "

01130103     " Alimentos marinos frescos, refrigerados o congelados          "
01130104	 " Pescado y alimentos marinos secos, ahumados o salados        "

01130105     " Pescados y alimentos marinos en conserva frescos o procesados       "
01130199	 " Otras especies acuáticas             "

01140101     " Leche               "
01140102     " Yogurt               "
01140103	 " Otros productos lácteos             "

01140201     " Quesos y cuajada             "
01140301	 " Productos lácteos no de leche de vaca         "

01140401     " Huevos y productos derivados preparados íntegramente con huevos        "
01150101     " Aceite comestible/Aceite a granel            "
01150201     " Mantequilla y margarina             "
01150301     " Grasas comestibles de origen vegetal           "
01150302     " Grasas comestibles de origen animal           "
01150303	 " Sebo               "
01150399	 " Otras grasas comestibles             "
01160101	 " Acerola               "
01160102	 " Achachairú               "
01160103	 " Albarillo               "
01160104	 " Arándano               "
01160105	 " Araza               "
01160106	 " Asaí               "
01160107	 " Babaco               "
01160108	 " Bi               "
01160109	 " Cacharana               "
01160110	 " Caqui               "
01160111	 " Carambola               "
01160112	 " Cayú               "
01160113	 " Cereza               "
01160114	 " Chirimoya               "
01160115	 " Cidra               "
01160116	 " Ciruelo               "
01160117	 " Conservilla               "
01160118	 " Coquiño               "
01160119	 " Damasco               "
01160120	 " Dátiles               "

01160121     " Durazno               "
01160122	 " Endrino               "
01160123	 " Frambuesa               "
01160124	 " Fresa               "
01160125	 " Frutilla               "
01160126	 " Granada               "
01160127	 " Granadilla               "
01160128	 " Grosella               "
01160129	 " Guabirá               "
01160130	 " Guanábana               "
01160131	 " Guapomo               "
01160132	 " Guapurú               "
01160133	 " Guayaba               "
01160134	 " Guinda               "
01160135	 " Higo               "
01160136	 " Jaca               "
01160137	 " Kinoto               "
01160138	 " kiwi               "
01160139	 " Lichi               "
01160140	 " Lima               "

01160141     " Limón               "
01160142	 " Locosti               "
01160143	 " Lujma               "

01160145     " Mandarina               "
01160146     " Mango/a               "
01160147     " Manzana               "
01160148	 " Maracuyá               "
01160149	 " Melón               "
01160150	 " Membrillo               "
01160151	 " Mocomoco               "
01160152	 " Mora               "
01160153	 " Moringa               "
01160154	 " Motoyoe               "


01160155     " Naranja               "
01160156	 " Nectarina               "
01160157	 " Níspero               "
01160158	 " Noni               "
01160159	 " Ocoró               "
01160160	 " Ocorocillo               "
01160161	 " Pacay               "
01160162	 " Palta               "


01160163     " Papaya               "
01160164     " Pera               "
01160165	 " Peramota               "
01160166	 " Piña               "
01160167	 " Pitaja/pitajaya               "
01160168	 " Pitango               "


01160169     " Plátano               "
01160170	 " Sandía               "
01160171	 " Pomelo/toronja/graifu               "
01160172	 " Tamarindo               "
01160173	 " Tumbo               "
01160174	 " Tuna               "
01160175	 " Taruma               "


01160176     " Uva               "

01160177	 " Almendras/castaña               "
01160178	 " Nueces               "
01160179	 " Nuez de macadamia             "
01160180	 " Frutas en rodajas frescas            "
01160181	 " Fruto de Tembé/Chima             "
01160182	 " Fruto Chilto              "
01160183	 " Fruto coco              "
01160184	 " Copoazú               "
01160199	 " Otras frutas frescas, refrigeradas o congeladas          "
01160201	 " Orejón/kisa/moconchinche               "
01160202	 " Manzanas deshidratadas              "
01160203	 " Higos deshidratados              "
01160204	 " Plátanos deshidratados              "
01160205	 " Pasas de uva             "
01160206	 " Ciruela pasa              "
01160299	 " Otras frutas, partes de frutas deshidratadas          "
01160301	 " Frutas en conserva/envasadas             "
01160302	 " Frutas almibaradas              "

01160399     " Otras frutas en conserva y productos a base de fruta      "

01170101	 " Acelga               "
01170102	 " Achojcha               "

01170103     " Ají               "
01170104	 " Ajo               "
01170105	 " Albahaca               "
01170106	 " Alcachofa               "
01170107	 " Apio               "
01170108	 " Berenjena               "
01170109	 " Berro               "
01170110	 " Betarraga/remolacha               "
01170111	 " Brócoli               "

01170112     " Cebolla               "
01170113	 " Choclo               "
01170114	 " Coliflor               "
01170115	 " Culandro               "
01170116	 " Espárrago               "
01170117	 " Espinaca               "
01170118	 " Huacataya               "
01170119	 " Lacayote/Carote               "


01170120     " Lechuga               "
01170121	 " Locoto               "
01170122	 " Nabo               "
01170123	 " Pepino y pepinillo             "
01170124	 " Perejil               "
01170125	 " Pimentón/morrón               "
01170126	 " Quirquiña               "
01170127	 " Rábano               "
01170128	 " Repollo               "


01170129     " Tomate               "
01170130	 " Ulupica               "
01170131	 " Verdolaga               "
01170132	 " Zanahoria               "
01170133	 " Zapallo/joco/ancu/iscariote               "
01170134	 " Arveja verde              "
01170135	 " Haba verde              "
01170136	 " Vainita               "
01170137	 " Conjunto de verduras picadas/surtido de legumbres en bolsa        "
01170138	 " Hongos o champiñones             "
01170139	 " Angolina               "
01170140	 " Alfalfa               "
01170199	 " Otras legumbres - hortalizas y otros vegetales frescos, refrigerados o congelados     "

01170201     " Papa               "
01170202	 " Camote               "
01170203	 " Hualuza               "
01170204	 " Izaño               "
01170205	 " Oca/apilla               "
01170206	 " Papaliza/ullucu               "
01170207	 " Yacón/aricoma               "
01170208	 " Yuca/mandioca               "
01170209	 " Racacha               "
01170210	 " Ajipa               "
01170211	 " Raíz de achacana             "
01170299	 " Otros tubérculos frescos o refrigerados           "
01170301	 " Frejol/poroto               "
01170302	 " Garbanzo               "
01170303	 " Lenteja               "
01170304	 " Tarwi               "
01170305	 " Cumanda               "
01170306	 " Haba seca              "
01170307	 " Arveja seca              "
01170308	 " Haba tostada              "
01170309	 " Arveja tostada              "
01170309	 " Arveja tostada              "
01170310	 " Haba cocida (Haba mote)            "
01170399	 " Otras legumbres secas y productos a base de legumbres conservados o procesados    "

01170401     " Tubérculos secos              "
01170402	 " Tubérculos en conserva             "
01170403     " Legumbres y hortalizas en conserva           "
01170404	 " Otros productos a base de tubérculos          "


01170501     " Soya               "
01170502     " Maní               "
01170503     " Linaza               "
01170504	 " Mostaza (grano)              "	
01170505	 " Colza               "
01170506	 " Sésamo (ajonjolí)              "
01170507	 " Grano de girasol             "
01170508	 " Cártamo               "
01170509	 " Chía               "

01170510     " Aceitunas u oliva             "
01170599	 " Otros granos oleaginosos             "

01170601	 " Caña de azúcar             "
01180101     " Azúcar               "
01180201     " Mermeladas y dulces             "
01180202	 " Compotas               "
01180203	 " Puré de frutas             "
01180204	 " Jaleas y pastas de fruta           "
01180301	 " Miel natural              "
01180302	 " Jalea real              "
01180303	 " Propóleo               "
01180304	 " Miel de caña             "
01180305     " Sucedáneos artificiales del azúcar            "
01180399	 " Otros productos a base de azúcar          "
01180401     " Chocolates               "
01180402	 " Caramelos/dulces               "
01180403	 " Goma de mascar/chicle             "
01180404	 " Confites               "
01180405	 " Pastillas para la garganta y caramelos para la tos       "
01180406	 " Toffees               "
01180407	 " Malvaviscos/masmelos/marshmallow               "
01180408	 " Chocolate blanco              "
01180409	 " Turrón               "
01180410	 " Melcochas               "
01180499	 " Otros dulces y productos de confitería          "
01180501	 " Hielo               "
01180502	 " Helado               "
01190101     " Sal               "
01190102     " Especias, salsas, condimentos, aderezos y similares          "
01190201     " Preparados y polvos para hornear           "
01190202	 " Extractos de jugos de carne, sopas y caldos        "
01190203	 " Concentrados artificiales para preparar bebidas saborizadas          "
01190301	 " Alimentos para lactantes homogeneizados y preparados dietéticos         "
01190401     " Alimentos preparados y/o cocidos listos para el consumo sometidos a procesos de conservación, enlatado o "
01199901     " Otros productos alimenticios n.e.p.            "
01210101     " Café               "
01210201     " Té               "
01210202     " Mate y otros vegetales para infusiones (hojas, flores, ramas)       "
01210203	 " Hojas de coca para mate           "
01210288	 " Hierbas naturales (coca, manzanilla, eucalipto, boldo, cedrón, etc)        "
01210301     " Cacao               "
01210302	 " Polvos a base de chocolate (alimentos achocolatados)         "
01220101     " Agua mineral              "
01220102	 " Agua natural envasada             "
01220103	 " Agua tónica              "
01220201	 " Bebidas gaseosas              "
01220301     " Jugos de fruta envasados            "
01220302	 " Jugos de hortalizas envasados            "
01220401	 " Polvos para preparar refrescos o jugos          "
01220402	 " Jarabes y concentrados para la preparación de bebidas        "
01220501     " Bebidas energizantes y deportivas            "
01220601     " Otras bebidas no alcohólicas            "
02110101	 " Alcohol etílico              "
02110102	 " Singani               "
02110103	 " Whisky               "
02110104	 " Ron y aguardiente de caña           "
02110105	 " Gin y Ginebra             "
02110106	 " Vodka               "
02110107	 " Coñac               "
02110108	 " Pisco               "
02110109	 " Brandy               "
02110110	 " Bebida destilada de hoja de coca          "
02110111	 " Tequila               "
02110112	 " Licores               "
02110113	 " Aperitivos a base de bebidas destiladas          "
02110199	 " Otras bebidas destiladas             "
02120101     " Vino, sidra y perada incluido el sake         "
02130101     " Cerveza               "
11110101	 " Almuerzo en local             "	
11110102	 " Cena en local             "
11110103	 " Desayuno / te en local           "	
11110104	 " Suministro de platos especiales en establecimientos tipo local        "	
11110201	 " Almuerzo en mercado o puesto           "	
11110202	 " Cena en mercado o puesto           "	
11110203	 " Desayuno/te en mercado o puesto           "	
11110204	 " Expendio de comidas en puestos especializados          "	
11110301	 " Expendio de comidas por ambulantes           "	
11110401	 " Suministro de comida y bebidas por concesionarios         "	
11110501	 " Expendio de comida para el consumo fuera de sus locales o con entrega a domicilio "	
11110601	 " Suministro de comida y bebidas bajo contrato (Catering)        "	
11110701	 " Expendio de comida y bebidas en medios de transporte público      "	
11110801	 " Expendio de bebidas alcohólicas en locales          "	
11110802	 " Expendio de bebidas no alcohólicas en locales         "	
11110901	 " Expendio de bebidas alcohólicas en puestos fijos, móviles        "	
11110902	 " Expendio de bebidas no alcohólicas en puestos fijos, móviles       "	
11111001	 " Expendio de bebidas alcohólicas por ambulantes          "	
11111002	 " Expendio de bebidas no alcohólicas por ambulantes         "	
11111101	 " Venta de comidas por máquinas automáticas          "	
11111102	 " Venta de bebidas por máquinas automáticas          "	
11111201	 " Suministro de comidas en lugar no especificado         "	
11111202	 " Suministro de bebidas en lugar no especificado         "	
11120101	 " Servicio de comidas exclusivo en comedores de trabajo, estudio y beneficencia entre otros   "	

 ;     
label values variedad variedad ;
#delimit cr
label var variedad "Codigo por variedad de producto"

*WINDOWS
*save $dta\gastos_EPF.dta, replace

*MAC
save $dta/gastos_EPF.dta, replace


