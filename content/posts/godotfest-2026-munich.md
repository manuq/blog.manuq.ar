+++
date = '2026-11-11T00:00:00-00:00'
title = 'GodotFest 2026 München Brezen'
summary = 'las presentaciones que vi y las charlas de pasillo'
+++

Crucé el océano para asistir al festival, y para unos días de coworking (en el trabajo estamos todxs remoto). Lo que más disfruté fue charlar con gente y jugar sus juegos. También, ver a la gente jugar Threadbare. Yo no estaba muy convencido de agregarle modo táctil y la verdad que hace muy fácil mostrar el juego en un celular, aunque no sea la mejor forma de jugarlo.

## charlas de pasillo

La descubrí a [RothioTome](https://www.twitch.tv/rothiotome) mostrando su nuevo juego de terror y enseguida nos pusimos a charlar de cómo le fue hace poquito en [la eva](https://expoeva.com/) en Buenos Aires, siendo una celebridad. Para mí ella es de las mejores *streamers* en español de gamedev. Después le mostré Threadbare y se puso a jugarlo desde mi teléfono, y me dio [el feedback más importante](https://github.com/endlessm/threadbare/discussions/3079) que recibí hasta ahora para el modo de pantalla táctil. Ya lo implementé y me sorprende lo bien que se siente. De regreso a casa empecé a jugar [Wax Heads](https://store.steampowered.com/app/2769240/Wax_Heads/), que lo tenía pendiente hace muchísimo. Tiene mucha onda, ¡me viene gustando!

Hablando de eso, también estaba Stein con su [Dig Dig Boom](https://store.steampowered.com/app/2026040/Dig_Dig_Boom/). ¡Qué juegazo!

Finalmente tuve el gusto de conocer a Lilith y a Nikita, que hacen [Backstitch](https://backstitch.dev/). También escuché hablar en español a Giovanni Beltrán (gamedev de Colombia) y a Emilio Coppola (director de la Godot Foundation) y me sumé al fogón. Después almorcé con Giovanni, quien jugó Threadbare en su celular mientras le comentaba lo buena que me pareció su charla del día anterior. Lo que me lleva a...

## las presentaciones

La que más me gustó fue sobre el juego humanitario [Amnios](https://www.play-amnios.com/) que es [de fuente disponible](https://github.com/headpoolnumerique/Amnios). Es una historia interactiva, basada en la historia real de tres mujeres (Nina, Amani y Tania) migrando a la vez que maternando. Es el resultado de una investigación sobre diseño humanitario, sin interés comercial. Realizado por un equipo 100% de mujeres. Testeado por madres sin experiencia previa en videojuegos. Recomiendo mucho [ver la charla completa](https://youtu.be/-Jz-pna3upc). Contó Aida Navarro, la directora creativa, que usaron exclusivamente herramientas de código abierto. Godot, por supuesto. Y las ilustraciones fueron hechas en Krita, por una artista que ahora trabaja para Disney, fuaa. Cuestión que, al momento que escribo esto, hay dos formas de jugar Amnios: 1. ir al museo de la cruz roja en Suiza (donde está exhibido). O 2. bajándose el proyecto y abriéndolo en el editor de Godot. ¡Cosa que hice! Y lo estuvimos chusmeando con mi compa Will para ver cómo hicieron los sprites reflejados en el agua con nodos PointLight2D. Lo explicó la desarrolladora Claire Delhomme en la charla, pero probarlo en el proyecto es mucho mejor. Por cierto, arriba puse "de fuente disponible" porque si bien el juego está en GitHub, no está abierto a recibir contribuciones, al menos no hoy por hoy.

Un juego open source que sí es comunitario es 99 Managers Futsal Edition, de Simon Dalvai. En particular recibe traducciones de un montón de gente para muchos idiomas. [La charla](https://youtu.be/cExS9FKLOOc) se trataba de cómo integrar Weblate, cosa que me interesa para Threadbare. Me confirma que tomamos la decisión correcta en elegir Gettext en lugar de CSV para las traducciones. Ya [tomé el consejo de agregar contexto](https://github.com/endlessm/threadbare/pull/3077) de esta charla. Resulta que en inglés la palabra "back" puede traducirse como "atrás" o como "espalda". Así que gracias Simon.

Tomé varias notas de la [charla de accesibilidad](https://youtu.be/2d0Vv7Aadmc) para hacer a Threadbare más accesible. Parece que la cosa más importante a implementar es el mapeo de controles, para que un jugador o jugadora con discapacidad pueda remapear a su gusto.

La de [portear incrementalmente GDScript a C++](https://youtu.be/kPQZ9af-ei0) para cosas que necesiten performance me puede llegar a servir a futuro. El proyecto de ejemplo está muy bien.

La de [hacer un SFX de un lanzallamas grabando la bacha del baño](https://godotfest.com/talks/synthesizing-a-flamethrower-from-a/) me pareció re divertida.

También hubo una básica de [composición de imagen](https://youtu.be/e5JcSxDBop8). Muchas cosas que ya sabía pero muy bien presentadas. Me hizo abrir [esta tarea](https://github.com/endlessm/threadbare/issues/3070) para las cinemáticas.

Hubieron al menos tres charlas de producción / planificación y las tres me gustaron. Una [dedicada a game jams](https://www.youtube.com/watch?v=8mLDjptfA_s), otra sobre [validar si tu juego está bueno](https://youtu.be/2N4l1qCWqU8). Y personalmente la que más me gustó de estas fue la de Giovanni, me pareció muy honesta, y el título me suena de algún lado: [The Price of Rushing Preproduction](https://youtu.be/aAK1v01pJfc). Al juego le tengo ganas, es un turn-based Residen Evil con estética de PS1.

Al igual que [como en gamescom]({{< relref "posts/juegos-de-gamescom-2026.md" >}}), ¡gracias Endless Access por mandarme al evento!
