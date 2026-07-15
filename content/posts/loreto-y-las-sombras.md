+++
date = '2026-07-11T00:00:00-00:00'
draft = false
title = 'Loreto y las sombras de Salta'
summary = 'entrada grupal para la jam Mujeres de la Independencia'
+++

[Esta es la entrega grupal](https://itch.io/jam/mujeres-de-la-independencia-gamejam/rate/4744902) que hicimos para la jam. ¡Juéguenla y me cuentan!

## arrancandoo

Me enteré de [esta jam](https://itch.io/jam/mujeres-de-la-independencia-gamejam) y me atrajo. Primero y principal por la temática: visibilizar a las mujeres que tuvieron relevancia en los hechos históricos de nuestra independencia, las que los libros y la "historia oficial" dejaron de lado. Y después por la duración. Iba apropiadamente del 20 de junio al 9 de julio. Entre el laburo y la vida no me queda mucho tiempo extra, y tampoco me gusta pasarme los findes sentado en la compu (ya bastante me paso durante la semana). Pero tres semanas es un tiempo re manejable. Además coincidía con el evento mundial-futbolístico y daba para aprovechar la distracción generalizada y enfocarme en un juego.

Me interesaba en particular hacer algo sobre la figura de Macacha Güemes. Para el feriado anterior del 17 de junio, estuvimos en casa hablando de Macacha. Así que [tiré ideas](https://excalidraw.com/#json=vaQaoLIEsWSMUBTOFOPw4,aex0TXm9y6auFkm4vJ_bTw), aunque el scope se me iba a la mierda y me daba cuiqui errarle fiero a la historia.. estaba a punto de desistir.. cuando leo en el discord del evento:

> Cecilia Verino — Holi. Ando dispo para hacer un proyecto para una jam. Soy historiadora, game designer y diseñadora de narrativa, por lo que necesitaría gente en programación, arte y audio. Si es un programador de Godot, mejor, porque estoy aprendiendo a prototipar en ese motor y me gustaría practicar con el mismo. Andaba con ganas de hacer un juego estilo sigilo y acción con Macacha Güemes y las espías salteñas. Si alguien está interesado en la idea, avisen porfa.

"Sigilo y acción".. "Macacha Güemes y las espías salteñas".. "Godot".. ¡parecido a lo que yo andaba ideando! Y mi cagazo de no ser históricamente preciso ya no tendría lugar con una historiadora en el grupo. Cuando me aceptaron como integrante ya estaba bastante formado el grupo con una persona en programación, dos en audio, y otra en gráficos, además de Cecilia.

## la previa

Hicimos reuniones virtuales. Armamos [un figma](https://www.figma.com/board/EtVtFaOGvAbACt525vlP8J/Juego-Macacha?node-id=0-1&t=i1vLnE94TM1vOLSi-1) (acá [en png](https://drive.google.com/file/d/132h7BggRbmW2Fs10BBo0Q2uSu-5StWeG/view?usp=sharing)). Me empecé a cebar. También cayó a mis manos (¡gracias Josefina!) un librito de divulgación cuyo título envejeció un poco mal: *Libertarias, mujeres que dejan huella. De Mariana Baizán*, que escaneé y [dejo acá para descargar](https://drive.google.com/file/d/1Uxg75PCW4csa5IoDrUyJe3g0gD4BTH-C/view?usp=sharing).

De la previa me gustó que decidamos una estética tipo "Cult of the Lamb", un 2.5D digamos. Y la idea de agregar minijuegos bien simples para cortar un poco la narrativa. También que la protagonista no sea Macacha sino otra de "las bomberas": María Loreto Sánchez Peón, la líder de las espías salteñas.

Me veía fuera de mi zona de confort ya que acostumbro a usar godot en 2d, y este proyecto se encaminaba a ser 3d con sprites como billboards. ¡Interesante!

## desarrollo

Luis ([marikamutante](https://lueegue.itch.io/)) se puso al hombro toda la estética visual y la ambientación/atmósfera del juego. Y es impresionante lo que logró con los personajes en un pixel art súper low-res. Diseñó y decoró cada uno de los niveles/escenarios (son 5). Y la verdad que fue un lujo porque tiene altos conocimientos en Godot así que integró todo por su cuenta usando github desktop. ¡Qué placer trabajar así!

Cecilia ([algieba15](https://algieba15.itch.io/)) hizo la investigación histórica, el guión, la producción y esquemas para el diseño de los minijuegos. También se encargó de escribir los diálogos, primero en una hoja de cálculos, pero después se animó a meter mano con git en el repo, usando el addon Dialogue Manager!

Mi tocayo Manu Elle ([manuellegago](https://manuellegago.itch.io/)) y Agustín ([lobitos](https://agustin-lobos.itch.io/)) tuvieron el desafío de trabajar todo el audio. Congeniando para poder hacer la música en capas, sonido ambiente para cada escenario y efectos de sonido. Definieron una estética que es retro/digital mezclada con instrumentos analógicos ¡Se pasaron!

Por mi parte, inicié [el repo en github](https://github.com/MacachaJam/macacha-jam) a partir de una plantilla hecha para jams. Pero enseguida me arrepentí, aunque la mantuve, y eso me hizo renegar bastante. Desde:
- Tener que traducir un menú para un juego de jam que no va a ser traducible.
- Sacarle la forma en que guarda el estado del juego. Estaba pensado para guardar la posición exacta de cada objeto y demás propiedades. Pero nosotros necesitábamos guardar hechos tipo "hablaste con Macacha" o "te descubrieron los soldados".
- No nos sirvieron ni la forma en que hace ni la música, ni el menú de pausa, ni las transiciones entre escenas.
- Pone el proyecto de Godot en una subcarpeta `godot`, lo que para mí no tiene sentido (se puede poner un `.gdignore` en subcarpetas si no queremos que Godot las escanee para el proyecto).
- Viene con menú de opciones de audio un poco rebuscadas (las simplifiqué) y ningún menú de video.

...hasta sacarle por completo la integración continua que trae y ponerle una propia. Ya casi erradicando la plantilla del repo. Lección para la próxima: ¡no usar plantilla!

Por el contrario, lo que sí sirvió y mucho fue traerme componentes reutilizables desde [threadbare](https://github.com/endlessm/threadbare). Ya que trabajo haciendo ese juego y estoy muy familiarizado con su código. Por ejemplo:
- El scene manager: cambiar de escena con transiciones, teleporters, spawn points. Que con un poco de trabajo logré convertir a 3D.
- El area filler (también con un poco de laburo convertido a 3D). Sirve para vestir rápido un nivel con props, definiendo un área poligonal. Hay una escena `area_filler_test.tscn` para probar en el editor.
- El game state basado en Resources. Para guardar los hechos que comenté arriba. Está re bueno poder cambiar el estado con el juego andando, mediante el Remote dock del editor.

Sirvieron bastante, al punto que mis compas las llamaron *"jam essentials"*. ¡Deberíamos convertirlas en addons de Godot!

Además de otras cosas que me fueron fácil de implementar porque ya las había hecho en threadbare como interactuar con NPCs, iniciar un diálogo al interactuar, el uso del addon Dialogue Manager.

Un chiche que logré meter del que estoy particularmente orgulloso fue el [efectito este de rebote](https://macachajam.github.io/macacha-jam/#efecto_squash_stretch/efecto_squash_stretch_test) en los arbustos.

Lo que más me divirtió hacer fue el minijuego de escuchar. Me hubiera gustado dedicarle el mismo tiempo a los otros dos. Y también me gustó hacer la parte de tensión, en que te persiguen los soldados (cuando perdés a un minijuego). Es una boludez, pero para mí hacer la navegación en 3d fue un desafío. Hacía rato que no me quedaba hasta la madrugada programando.

Algo que hice pero al final no valió tanto la pena fue agregarle el joystick virtual para pantalla táctil que viene con Godot 4.7. Si prueban el build web en un celular van a ver que funciona, aunque está difícil usar el menú y otras partes de la interfaz a menos que te agarres el dedo índice con un sacapuntas. El tema es que por limitaciones técnicas (la niebla volumétrica no funca en web) decidimos publicar el juego como builds para Windows y Linux. Una pena porque sé que a la gente le da paja bajarse los juegos para probarlos.

A mitad de la jam el otro programador hechó la de humo sin haber implementado nada. Una lástima porque había hecho un re buen trabajo dibujando diagramas en la preproducción. Me perdí ese intercambio y tuve que remarla. Me hubiera encantado ponerle más onda a las mecánicas de los minijuegos. Y a la jugabilidad en general, para que sea más que una excelente historia. ¡Pero hubo que cerrar para llegar a tiempo!

A diferencia de otras jams más frenéticas en las que participé, el código quedó bastante bien. Hice una buena separación de los componentes y dejé propiedades exportadas para no tener que andar tocando los scripts. Quizá overkill para una jam, pero hasta me ayudó a mí mismo a no enredarme.

## integreishon y perres

La colaboración en un proyecto de videojuego es un tema que me suele rondar la cabeza. ¿Cómo puede ser que la tecnología avance para tantos lados pero que la colaboración todavía no esté resuelta? Dependemos de git, que fue creado para código de programación. Un ejemplo sencillito: dos personas agregan un nodo distinto a una misma escena de Godot, cada una en su rama, y tratan de unir... ¡CONFLICTO!

```
<<<<<<< HEAD
[node name="NodoA" type="Node2D" parent="." unique_id=1659013573]
=======
[node name="NodoB" type="Node2D" parent="." unique_id=229542650]
>>>>>>> rama-b
```

Y encima el conflicto no se puede resolver desde el editor, porque los separadores del conflicto (las líneas con `<<<<<<<`, `=======`, `>>>>>>>`) rompen el formato del archivo `.tscn`, el editor tira un "parse error", y la escena no se puede abrir:

```
  ERROR: scene/resources/resource_format_text.cpp:293 - Parse Error: Parse error. [Resource file res://scenes/levels/level_1.tscn:101]
  ERROR: Failed loading resource: res://scenes/levels/level_1.tscn.
```

Así que hay que resolver el archivo roto en un programa externo (como emacs) haciéndole una cirugía al texto.

Este problema está muy bien explicado en la charla [*beyond git: real-time version control for godot*](https://www.youtube.com/watch?v=CAJ_iIedx_I) que dio que hablar en la última godotcon (con un poco de hate para mi gusto, llevo toda una carrera basada en git, y aunque por supuesto reniego le debo un montón, yo y la mayor parte de la industria del software). Y me da mucha ilusión la herramienta [backstitch](https://backstitch.dev/) (bancada por la fundación para la que trabajo) que se integra al editor. ¡Espero poder usar backstitch en la próxima jam!

Volviendo a esta jam, ¿qué hicimos? Yo no quería que la integración quedara toda a cargo de Luis y de mí, así que agité para que usen github desktop quienes aun no lo hacían, y que abran pull requests (de ahora en más denominados "perres", y la acción de abrir uno: "perrear"). ¡Y se animaron! Además tomamos las típicas medidas preventivas: "ojo que voy a estar editando el nivel del salón". Es irónico hacer esto en git, que como es un control de versiones distribuído no tiene algo parecido al comando `svn lock` del viejo svn (que es centralizado). Aunque con git LFS (que se usa mucho en videojuegos) sí existe el comando `git lfs lock`.

En el caso de Cecilia, hizo cambios importantes en los diálogos y hasta destacó "perderle el miedo a git" como uno de sus logros en la jam. ¡Zarpado!

En el caso de lxs chicxs de audio, también abrieron ramas y pudieron integrar ellxs mismxs las músicas. Yo les había pasado [esta charla de música interactiva en Godot](https://youtu.be/dPXapfE7aHQ), y estaba por copiar el Background Music autoload desde Threadbare, que es open source y puede hacer el sonido por capas que querían. Un ejemplo se puede escuchar [en este video](https://youtu.be/q-R28y3bWa8?t=1707), en el que los instrumentos se van sumando en capas a medida que se resuelve el puzzle. Pero Agustín me ganó de mano haciendo un audio/music manager con asistencia de un llm, con la gran ventaja de liberarme de hacer ese trabajo! La contra es que tuve que renegar un poco con ese código generado. Pero igual, ¡felicitaciones! Tuvimos solo dos conflictos y los resolví de taquito.

## adorni fin

Estuve probando los demás juegos de la jam y hay cosas re interesantes. Por ejemplo [adiviname](https://itch.io/jam/mujeres-de-la-independencia-gamejam/rate/4681804) tiene unas hermosas ilustraciones.

A modo de conclusiones...

Aprendí una banda y encima quedó muy lindo el resultado. Me terminé involucrando bastante más de lo que pensaba. ¡Gracias especialmente a la flia que me hizo el aguante!

A mis compas de grupo: me encantó conocerles y compartir esta experiencia con ustedes, cada unx aportando desde su lugar único.

A las organizaciones que hicieron posible la jam: ¡mil gracias y sigan haciendo! [acción dev](https://www.instagram.com/acciondev/), [women in games ar](https://www.womeningamesar.com/), [sheroes in games](https://sheroesingames.unq.edu.ar/).
