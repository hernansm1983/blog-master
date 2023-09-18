--
-- Base de datos: `blog-master`
--
CREATE DATABASE IF NOT EXISTS `blog-master` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `blog-master`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `id` int(255) NOT NULL,
  `nombre` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id`, `nombre`) VALUES
(1, 'Accion'),
(2, 'Estrategia'),
(3, 'Rol'),
(4, 'RPG'),
(5, 'Otros Deportes'),
(6, 'Aventuras'),
(7, 'Shooters'),
(8, 'Futbol'),
(9, 'Boxeo'),
(10, 'Tennis'),
(11, 'Guerra'),
(12, 'Autos');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `entradas`
--

CREATE TABLE `entradas` (
  `id` int(255) NOT NULL,
  `usuario_id` int(255) NOT NULL,
  `categoria_id` int(255) NOT NULL,
  `titulo` varchar(255) NOT NULL,
  `descripcion` mediumtext DEFAULT NULL,
  `fecha` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `entradas`
--

INSERT INTO `entradas` (`id`, `usuario_id`, `categoria_id`, `titulo`, `descripcion`, `fecha`) VALUES
(1, 1, 1, 'CALL OF DUTY: Modern Warfare', 'Call of Duty: Modern Warfare es un videojuego de disparos en primera persona desarrollado por Infinity Ward y publicado por Activision. Es el decimosexto juego de la saga Call of Duty y es un reinicio de la serie Modern Warfare.1​2​3​ Fue lanzado el 25 de octubre de 2019.\r\n\r\nEl juego se ambienta en un entorno realista y moderno. Por primera vez en la historia de la franquicia, Call of Duty: Modern Warfare fue compatible con el modo multijugador multiplataforma. Activision también ha confirmado que el pase de temporada tradicional de la franquicia ha sido desechado, lo que permite a la compañía distribuir contenido gratuito después del lanzamiento a todos los jugadores, además de otros cosméticos y mapas jugables de manera gratuita.4​ El juego también es el primero en la serie, desde el Call of Duty: Ghosts de 2013, que no presenta un modo zombis.5​', '2022-11-27'),
(2, 1, 1, 'STARCRAFT', 'StarCraft es un videojuego de estrategia en tiempo real de ciencia ficción militar desarrollado por Blizzard Entertainment. El primer juego de la serie StarCraft fue lanzado para Microsoft Windows el 31 de marzo de 1998.3​ Es uno de los juegos más vendidos para la computadora personal4​ con más de 11 millones de copias vendidas a nivel mundial hasta febrero de 2009. Una versión para Mac OS fue lanzada en marzo de 1999, y una adaptación para el Nintendo 64, desarrollada en conjunto con Mass Media Interactive Entertainment, fue lanzada el 13 de junio del 2000.2​ El trabajo con el juego comenzó poco después del lanzamiento de Warcraft II: Tides of Darkness en 1995. StarCraft debutó en el E3 en 1996, donde se lo comparó desfavorablemente con Warcraft II, y, como resultado, el proyecto fue revisado por completo y luego exhibido al público a principios de 1997, recibiendo una respuesta mucho más positiva. StarCraft ha tenido su historia adaptada y ampliada a través de una serie de novelas, el pack de expansión StarCraft: Brood War y dos complementos autorizados, (StarCraft: Brood War también está disponible para Nintendo 64 solo con el Expansion Pak). La secuela del juego, StarCraft II: Wings of Liberty, fue lanzada en julio de 2010, con sus 2 posteriores expansiones y una reedición llamada StarCraft: Remastered fue lanzada en agosto de 2017, pasando la versión original (expansión Brood War incluida) de ser de pago a ser gratuita.', '2022-12-06'),
(3, 1, 4, 'LEAGUE OF LEGENDS', 'League of Legends (también conocido por sus siglas LoL), es un videojuego multijugador de arena de batalla en línea desarrollado y publicado por Riot Games. Inspirándose en Defense of the Ancients, un mapa personalizado para Warcraft III, los fundadores de Riot buscaron desarrollar un juego independiente del mismo género. Desde su lanzamiento en octubre de 2009, LoL ha sido un juego gratuito y se monetiza a través de la compra de elementos para la personalización de personajes. El juego está disponible para Microsoft Windows y macOS.\r\n\r\nEn el juego, dos equipos de cinco jugadores luchan en un combate jugador contra jugador, cada equipo ocupando y defendiendo su mitad del mapa. Cada uno de los diez jugadores controla un personaje, conocido como \"campeón\", con habilidades únicas y diferentes estilos de juego. Durante una partida, los campeones se vuelven más poderosos acumulando puntos de experiencia y ganando oro que se emplea para la compra de artículos para derrotar al equipo contrario. En el modo principal de juego de LoL, League, \"La Grieta del Invocador\", un equipo gana al abrirse paso hasta la base enemiga y destruir su \"nexo\", una gran estructura ubicada dentro de la cual se emanan tres líneas de súbditos o \"minions\", personajes no jugadores que al ser eliminados por el equipo enemigo otorgan oro y experiencia.\r\n\r\nLeague of Legends ha recibido críticas generalmente positivas; los críticos destacaron su accesibilidad, diseños de personajes y valor de producción. La larga antigüedad del juego ha resultado en una revaluación crítica, con reseñas con una tendencia positiva; el comportamiento negativo y abusivo de sus jugadores en el juego, criticado desde su lanzamiento, persiste a pesar de los intentos de Riot por solucionar el problema. En 2019, LoL alcanzó regularmente un máximo de ocho millones de jugadores simultáneos, y su popularidad ha llevado a vinculaciones como videos musicales, cómics, cuentos y hasta una serie animada de Netflix, Arcane. Su éxito también ha generado varios videojuegos derivados, incluida una versión móvil, un juego de cartas coleccionables digital y un juego de rol por turnos, entre otros. Se está desarrollando un juego de rol multijugador masivo en línea basado en LoL.\r\n\r\nCitado regularmente como el deporte electrónico más grande del mundo, el juego tiene una escena competitiva internacional que consta de 12 ligas. Estas ligas locales culminan en el Campeonato Mundial anual de League of Legends. El evento de 2019 registró más de 100 millones de espectadores únicos, alcanzando un máximo de 44 millones de espectadores simultáneos durante la final. Los eventos nacionales e internacionales se han transmitido en sitios web de transmisión en vivo como Twitch, YouTube, Bilibili y en el canal de deportes de televisión por cable ESPN.', '2022-12-06'),
(4, 1, 1, 'QUAKE', 'En un futuro no lejano, científicos militares dan sus primeros pasos en la tecnología de la teletransportación, creando los Slipgates (Portales-Pasadizos), artefactos que permiten materializar organismos desde y hasta puntos espaciales distantes. Sin que ellos pudieran prevenirlo, estos aparatos eran capaces —además— de unir dimensiones, produciendo que una de estas instalaciones construyera el puente entre este universo y una realidad plagada de demonios (alusiva al infierno), iniciándose una invasión a gran escala que amenaza con arrasar el planeta. Pronto, los soldados de las bases militares terrestres caen derrotados ante las gigantescas hordas.\r\n\r\nEn este punto, y sin una introducción gráfica, el jugador toma el rol del último superviviente de un batallón, un anónimo soldado (posteriormente llamado Ranger en Quake III Arena) quien cruza el primer portal e inicia la odisea de derrotar al mayor de estos demonios, un enemigo sumamente poderoso solo conocido por el nombre clave “Quake” (que posteriormente se revelará como Shub-Niggurath, oscura diosa pagana llena de maldad).\r\n\r\nArmado solo con una escopeta y un hacha, este soldado iniciará numerosos viajes interdimensionales entre nuestro mundo y el demoníaco, buscando las salidas de los lugares en que aparezca teletransportado, a fin de acercarse cada vez más a Shub-Niggurath y cumplir su misión de exterminarlo.\r\n\r\nLas secuelas de Quake solo aparecen mediante expansiones.', '2022-12-06'),
(5, 1, 1, 'DOOM ETERNAL', 'Doom Eternal es un videojuego de acción y disparos en primera persona desarrollado por id Software y publicado por Bethesda Softworks.​ Es el quinto título principal de la serie Doom y la secuela directa de Doom (2016).​ El juego fue lanzado el 20 de marzo de 2020 para las plataformas PlayStation 4, Xbox One, Microsoft Windows, Google Stadia y Nintendo Switch,​ y el 29 de junio del 2021 en plataformas como PlayStation 5 y Xbox Series X. Las críticas mayormente positivas están repletas de elogios por su campaña, gráficos, diseño de niveles, banda sonora y mecánicas de combate. También hubo algunas discrepancias por el mayor enfoque en la narrativa visual y sus secciones de plataformas. El juego recibió 5 nominaciones en The Game Awards 2020, incluidos como juego del año (GOTY) y mejor juego de acción1​.', '2022-12-06'),
(6, 1, 1, 'WOLFESTEIN 3D', 'En Wolfenstein 3D el jugador es William \"B.J.\" Blazkowicz, un espía estadounidense intentando escapar de la fortaleza nazi en la cual se encuentra prisionero. Esta fortaleza está llena de guardias armados y de perros entrenados para el ataque. El edificio tiene un gran número de cuartos secretos que contienen tesoros, raciones de alimentos y botiquines de primeros auxilios, al igual que diferentes tipos de armas y municiones, todo lo cual ayudará al jugador a lograr su objetivo.\r\n\r\nPrimero debe eliminar al Superhombre nazi de Hitler, Hans Grosse, y escapar de la prisión de Wolfenstein.\r\n\r\nLuego, ir al subterráneo del Castillo Hollenhammer, matar al Dr. Schabbs y robar los planos para la operación Eisenfaust, que planea hacer una armada de mutantes perfectos para el Führer. Después, ir al búnker de Hitler en el Reichstag y destruir al Führer.\r\n\r\nWolfenstein 3D fue publicado como shareware, lo cual permitió que fuera copiado ampliamente. La versión shareware contenía un episodio, el cual consistía de 10 misiones (niveles). El lanzamiento comercial consistía de tres episodios incluyendo el shareware, y una expansión llamada \"The Nocturnal Missions\". Al igual que el episodio shareware, cada episodio de la versión comercial tiene 10 niveles, completando un total de 60 misiones en el juego.', '2022-12-06'),
(7, 1, 3, 'WORLD OF WARCRAFT', 'World of Warcraft (abreviado como WoW, literalmente en español Mundo de Warcraft) es un videojuego de rol multijugador masivo en línea desarrollado por Blizzard Entertainment. Es el cuarto juego lanzado establecido en el universo fantástico de Warcraft, el cual fue introducido por primera vez por Warcraft: Orcs & Humans en 1994.4​ World of Warcraft transcurre dentro del mundo de Azeroth, cuatro años después de los sucesos finales de la anterior entrega de Warcraft, Warcraft III: The Frozen Throne.5​ Blizzard Entertainment anunció World of Warcraft el 2 de septiembre de 2001.6​\r\n\r\nEl juego fue lanzado el 23 de noviembre de 2004, celebrando el décimo aniversario de la franquicia Warcraft. La primera expansión del juego The Burning Crusade fue lanzada el 16 de enero del 2007.7​ La segunda expansión, Wrath of the Lich King, fue lanzada el 13 de noviembre de 2008.8​ La tercera expansión, World of Warcraft: Cataclysm fue anunciada en el BlizzCon 2009 y fue lanzada el 7 de diciembre de 2010.9​10​ La cuarta expansión, World of Warcraft: Mists of Pandaria fue anunciada en el BlizzCon 2011 y fue lanzada el 25 de septiembre del 2012. La quinta expansión, World of Warcraft: Warlords of Draenor fue anunciada en el BlizzCon 2013 y fue lanzada el 13 de noviembre de 2014. La sexta expansión, World of Warcraft: Legion fue anunciada en el BlizzCon 2015 y fue lanzada el 30 de agosto de 2016. La séptima expansión, World of Warcraft: Battle for Azeroth fue anunciada en el BlizzCon 2017 y lanzada el 14 de agosto de 2018 siendo la primera expansión en la historia del juego en ser lanzada globalmente de forma simultánea. El 27 de octubre de 2020 fue lanzada la octava expansión, World of Warcraft: Shadowlands. Con 7.7 millones de suscriptores,11​ World of Warcraft continúa siendo con diferencia el juego en línea por suscripción con el mayor registro de usuarios, manteniendo el récord Guinness para el MMORPG (Massive Multiplayer Online Rol Playing Game) más popular.12​\r\n\r\nEn diciembre de 2013, gracias a los documentos secretos filtrados por Edward Snowden, salió a la luz que las agencias de inteligencia estadounidenses NSA y CIA, en colaboración con la británica GCHQ han estado vigilando y recogiendo datos de World of Warcraft y otros juegos de tipo MMORPG.', '2023-01-14'),
(8, 2, 2, 'AGE OF EMPIRES', 'Age of Empires es una serie de videojuegos que en su mayoría pertenecen al género videojuego de estrategia en tiempo real, y hay otros juegos que pertenecen a otros géneros. La mayoría de los juegos son para la plataforma PC, y otros juegos son de otras plataformas.', '2023-01-15'),
(12, 1, 1, 'WORLD OF WARCRAFT 1234', 'World of Warcraft (abreviado como WoW, literalmente en español Mundo de Warcraft) es un videojuego de rol multijugador masivo en línea desarrollado por Blizzard Entertainment. Es el cuarto juego lanzado establecido en el universo fantástico de Warcraft, el cual fue introducido por primera vez por Warcraft: Orcs & Humans en 1994.4​ World of Warcraft transcurre dentro del mundo de Azeroth, cuatro años después de los sucesos finales de la anterior entrega de Warcraft, Warcraft III: The Frozen Throne.5​ Blizzard Entertainment anunció World of Warcraft el 2 de septiembre de 2001.6​\r\n\r\nEl juego fue lanzado el 23 de noviembre de 2004, celebrando el décimo aniversario de la franquicia Warcraft. La primera expansión del juego The Burning Crusade fue lanzada el 16 de enero del 2007.7​ La segunda expansión, Wrath of the Lich King, fue lanzada el 13 de noviembre de 2008.8​ La tercera expansión, World of Warcraft: Cataclysm fue anunciada en el BlizzCon 2009 y fue lanzada el 7 de diciembre de 2010.9​10​ La cuarta expansión, World of Warcraft: Mists of Pandaria fue anunciada en el BlizzCon 2011 y fue lanzada el 25 de septiembre del 2012. La quinta expansión, World of Warcraft: Warlords of Draenor fue anunciada en el BlizzCon 2013 y fue lanzada el 13 de noviembre de 2014. La sexta expansión, World of Warcraft: Legion fue anunciada en el BlizzCon 2015 y fue lanzada el 30 de agosto de 2016. La séptima expansión, World of Warcraft: Battle for Azeroth fue anunciada en el BlizzCon 2017 y lanzada el 14 de agosto de 2018 siendo la primera expansión en la historia del juego en ser lanzada globalmente de forma simultánea. El 27 de octubre de 2020 fue lanzada la octava expansión, World of Warcraft: Shadowlands. Con 7.7 millones de suscriptores,11​ World of Warcraft continúa siendo con diferencia el juego en línea por suscripción con el mayor registro de usuarios, manteniendo el récord Guinness para el MMORPG (Massive Multiplayer Online Rol Playing Game) más popular.12​\r\n\r\nEn diciembre de 2013, gracias a los documentos secretos filtrados por Edward Snowden, salió a la luz que las agencias de inteligencia estadounidenses NSA y CIA, en colaboración con la británica GCHQ han estado vigilando y recogiendo datos de World of Warcraft y otros juegos de tipo MMORPG.', '2023-01-25'),
(15, 1, 7, 'Unreal Tournament', 'Unreal Engine es un motor de juego creado por la compañía Epic Games, mostrado inicialmente en el shooter en primera persona Unreal en 1998. Aunque se desarrolló principalmente para los shooters en primera persona, se ha utilizado con éxito en una variedad de otros géneros, incluyendo videojuegos de sigilo, lucha, MMORPG y otros RPG. Con su código escrito en C++, el Unreal Engine presenta un alto grado de portabilidad y es una herramienta utilizada actualmente por muchos desarrolladores de juegos.\r\n\r\nLa versión más estable es Unreal Engine 5, el cual fue lanzado en abril de 2022. Como su predecesor, su código fuente está disponible en GitHub tras registrar una cuenta, y el uso comercial está basado en modelo de regalías. Epic renuncia sus regalías hasta que sus desarrolladores han obtenido un millón de US$, y la regalía es renunciada si se publica en Epic Games Store. Epic ha incluido algunas propiedades como Quixel, Nanite, tecnología Lumen (Iluminación Global en Tiempo Real), Nanite y un nuevo editor.', '2023-01-27'),
(16, 1, 1, 'Test de Malas Palabras', 'Prueba de malas palabras\r\n****\r\n****', '2023-01-27'),
(17, 1, 9, 'Knockout Kings ', 'Knockout Kings es una saga de videojuegos simuladores realista de boxeo, producido por la compañía de software estadounidense Electronic Arts. El primer juego de la saga salió por primera vez en 1999 para Playstation, siendo una ampliación de disciplina deportiva en videojuego de EA Sports, siendo un simulador del deporte de boxeo muy realista, aprovechando la popularidad en ese momento de otros juegos del género como Rumble Boxing. Knockout Kings, descontinuo en 2002, con la salida del último juego Knockout Kings 2003, después le sucedió un cambio de título: Fight Night 2004, manteniendo el esquema de Knockout Kings. En la versión de Super nintendo 64 el juego es compatible con el rumble pack, sin embargo para poder guardar el contenido es necesario el controller pack.', '2023-02-03'),
(18, 1, 6, 'Monkey Island', 'Monkey Island (en español, Isla Mono, aunque el título se mantuvo en inglés para la versión española) es una saga de videojuegos de aventura gráfica producida y publicada por LucasArts, originariamente conocida como LucasFilms Games. Los juegos narran la historia de cómo Guybrush Threepwood intenta convertirse en el pirata más temido del Caribe, enfrentándose al malvado pirata LeChuck y conquistando el corazón de la gobernadora de la isla Mêlée, Elaine Marley.\r\n\r\nRon Gilbert, el creador de la serie, solo trabajó en los dos primeros juegos antes de abandonar LucasArts. Los derechos de Monkey Island siguieron siendo propiedad de LucasArts, y el tercer y cuarto juegos fueron publicados sin la aportación de Gilbert. Más tarde volvió a trabajar con Monkey Island, siendo el asesor de la quinta entrega, compuesta por cinco capítulos cortos producidos por Telltale Games con licencia de LucasArts.\r\n\r\n\r\nSu último trabajo es el videojuego Return to Monkey Island, la sexta entrega de la saga publicado en septiembre de 2022.', '2023-02-03'),
(19, 1, 6, 'Indiana Jones', 'Para el personaje principal de esta franquicia, véase Indiana Jones (personaje).\r\nIndiana Jones\r\nIndiana Jones logo.svg\r\nCreado por	George Lucas\r\nTrabajo original	Raiders of the Lost Ark (1981)\r\nPelículas y televisión\r\nPelícula(s)	Raiders of the Lost Ark (1981)\r\nIndiana Jones and the Temple of Doom (1984)\r\nIndiana Jones y la última cruzada (1989)\r\nIndiana Jones y el reino de la calavera de cristal (2008)\r\n[editar datos en Wikidata]\r\nIndiana Jones es una franquicia de medios concebida por el cineasta estadounidense George Lucas, y producida por Lucasfilm, cuyo argumento relata primordialmente las vivencias del aventurero homónimo ficticio para localizar objetos de relevancia histórica tales como el Arca de la Alianza y el Grial, a la vez que se enfrenta a adversarios nazis y soviéticos para evitar que utilicen tales reliquias con fines siniestros.1​\r\n\r\nEl desarrollo de la franquicia se remonta a 1973, cuando Lucas escribió una historia inspirada en los seriales cinematográficos de los años 1930 y 1940.2​3​ No fue sino hasta 1977 que, tras compartir el bosquejo con Steven Spielberg y justo después del estreno de Star Wars, se concretó un acuerdo con Paramount Pictures para producir una serie de películas sobre Indiana Jones,4​ el cual habría de ser interpretado por el actor Harrison Ford. La primera cinta, Raiders of the Lost Ark se estrenó en 1981 y, gracias a su éxito comercial y crítico, dio lugar a tres películas más que se exhibieron en las salas de cine entre 1984 y 2008. Otros productos derivados de los largometrajes incluyen la serie televisiva Las aventuras del joven Indiana Jones, además de múltiples videojuegos, publicaciones, juguetes, y atracciones y espectáculos en los parques temáticos de Disney. En estas distintas producciones el protagonista ha sido personificado también por los actores Corey Carrier, River Phoenix, Sean Patrick Flanery y George Hall.\r\n\r\nSe trata de una de las franquicias con mayores recaudaciones en la historia del cine, con ingresos superiores a los 1045 millones USD a nivel mundial,5​ cuyo impacto en la industria ha puesto «un listón bastante alto» a la vez que ha influido en una variedad de películas, series de televisión y videojuegos de acción y aventuras.6​7​ Algunos de estas producciones son Romancing the Stone (1984), Las minas del rey Salomón (1985), Los Goonies (1985), La momia (1999), Atlantis: El imperio perdido (2001), National Treasure (2004), El código Da Vinci (2006) y Capitán América: El primer vengador (2011); además de las series de videojuegos Tomb Raider y Uncharted.7​8​9​ Adicionalmente, Indiana Jones es catalogado como uno de los «mejores héroes cinematográficos de todos los tiempos» cuyas hazañas lo han llevado a ser descrito como un «terrible arqueólogo, pero un gran embajador de la arqueología».10​11​12​13​14​', '2023-02-03'),
(20, 1, 12, 'Need For Speed', 'Need for Speed (NFS) es una franquicia de videojuegos de carreras y aventuras publicada por Electronic Arts y actualmente desarrollada por Criterion Games. La serie se centra en las carreras callejeras ilícitas y, en general, les da el papel a los jugadores de completar varios tipos de carreras, infringiendo en más de una ocasión la ley local en persecuciones policiales. La serie lanzó su primer título, The Need for Speed en 1994. El título proviene de una famosa cita de la película de 1986 Top Gun. Desde Need for Speed: High Stakes, la serie también ha integrado la personalización de los vehículos en el juego.\r\n\r\nNeed for Speed ha sido elogiado por sus emocionantes persecuciones policiales y es la serie de videojuegos de carreras más exitosa del mundo. También es una de las franquicias de videojuegos más exitosas de todos los tiempos, vendiendo más de 150 millones de copias de juegos de la serie hasta la fecha. Debido a sus ventas, la propia franquicia también se ha expandido a otras formas de medios, incluyendo una adaptación cinematográfica1​ realizada por DreamWorks y juguetes con licencia de Hot Wheels™.2​\r\n\r\nLa serie en sí ha sido supervisada y tuvo juegos desarrollados por varios equipos notables a través de los años, incluyendo EA Black Box y Criterion Games, los creadores de la franquicia Burnout.3​ Sin embargo, en agosto de 2013, tras la reducción de Criterion Games, se anunció que el desarrollador sueco Ghost Games obtendría el control total de la franquicia Need for Speed y supervisaría todo el desarrollo futuro de la serie principal.4​ En ese momento, el 80% de los miembros de Ghost Games eran empleados de Criterion Games. A la fecha de 2020, la franquicia volvió a estar en manos de Criterion Games.****', '2023-03-24');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(255) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `apellidos` varchar(100) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `fecha` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `apellidos`, `email`, `password`, `fecha`) VALUES
(1, 'Hernan', 'San Martin', 'her_san_martin@hotmail.com', '$2y$04$cO7C4OYlfY2yijrIzXJTn.PzZFU2P8LD/93.Z9Z.q/BmkH523tPuC', '2022-11-27'),
(2, 'Jose', 'Pekerman', 'josepekerman@gmail.com', '$2y$04$iVvcQBID5FOmmGtYFLT08uF7nCMbfqReaRQYER4axmBQ00.KkB.XG', '2023-01-15');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `entradas`
--
ALTER TABLE `entradas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_entrada_usuario` (`usuario_id`),
  ADD KEY `fk_entrada_categoria` (`categoria_id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uq_email` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `entradas`
--
ALTER TABLE `entradas`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `entradas`
--
ALTER TABLE `entradas`
  ADD CONSTRAINT `fk_entrada_categoria` FOREIGN KEY (`categoria_id`) REFERENCES `categorias` (`id`) ON DELETE NO ACTION,
  ADD CONSTRAINT `fk_entrada_usuario` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`id`);