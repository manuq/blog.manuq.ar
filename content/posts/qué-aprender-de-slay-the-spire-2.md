+++
date = '2026-04-13T00:00:00-00:00'
draft = false
title = 'qué aprender de Slay the Spire 2'
tags = ['gamedev','godot']
summary = 'el proyecto más popular de godot, decompilado'
+++

Slay the Spire 2 me convoca por dos cosas:

Uno, me gustan los juegos de cartas. Vengo de Marvel Snap y Balatro en videojuegos. Y como juego de mesa, en las juntadas con amigos nunca falla [el viejo y querido truco]({{< relref "posts/sobre-videojuego-y-truco.md" >}}).

Y dos, me entusiasma que esté hecho en Godot, que es el engine que vengo usando en el laburo. Hay bastante escrito en internet de cómo transicionaron desde Unity. Valga el chiste: "Muerte a los salvages unityarios!" exclaman desde la federación de Godot.

Así que lo compré hace unas semanas. Todavía está en *early access*, y ya la está rompiendo. Está en el top 5 de los juegos más vendidos y jugados en Steam en este momento. Y de esos cinco hay tres que son *free to play*, lo que para mí lo hace ranquear a este (que es pago) aún más arriba.

Como gamedev amateur que soy, que se pueda inspeccionar un proyecto tan bestseller y popular me parece impresionante.

## Decompilando

La decompilación no se hizo esperar. Ocurrió al publicarse, antes de que tocara el suelo. ¡Horror! Excepto que la gente de Mega Crit es buena onda. Uno de ellos, Jake, [dijo](https://www.reddit.com/r/godot/comments/1rm7ueb/comment/o8zqpit/):

> Me haría muy feliz saber que otros desarrolladores de videojuegos aprendieron algo al leer nuestro código y nuestras escenas :)

¿Qué es decompilar? Básicamente es recuperar el proyecto editable a partir de los archivos binarios distribuídos del juego. Poder volver a abrirlo en el editor de Godot.

Como tengo una copia legal y el visto bueno de los creadores, posteé en Godot Meetup Argentina: "¿qué tan difícil puede ser decompilarlo?". Unos minutos más tarde me respondí a mí mismo con una captura de la escena de la carta básica. Con [Godot RETools](https://github.com/GDRETools/gdsdecomp) fue RE simple (cuac). Tan simple como bajarse la herramienta, apuntarla a un archivo local del juego (al `.pck`), y hacer un click. Después pude abrir el proyecto con la versión de Godot que más se ajusta (v4.5.1).

Salvedad: el juego decompilado así no corre. Por un lado, porque lo hicieron con una versión custom de Godot, adaptada a sus necesidades. Y por otro porque el *core* del juego, toda la lógica, vive en una lib propia. Se puede usar otra herramienta para decompilar esta lib en código fuente legible de C#, pero realmente no es la parte que más me interesa.

## ¿Y qué aprender?

Lo primero que hice fue abrir algunas escenas con personajes y ver las animaciones. ¡Qué maravilla! Están hechas en Spine que es una herramienta aparte, no son las animaciones esqueletales de Godot. Pero se las puede reproducir desde el editor tranquilamente.

Después me detuve un rato en la organización del proyecto. Nada del otro mundo, pero siempre es interesante ver cómo otros organizan sus archivos, porque no hay una forma que sea la mejor para todos los casos.

Creí que iba a aprender mucho más de interfaz gráfica y los [nodos Control](https://docs.godotengine.org/es/stable/classes/class_control.html). La parte UI de Godot está inspirada en KDE y yo vengo del palo de GTK, por lo tanto se me hace difícil entender cómo se diseñan las interfaces, todo me parece extraño. Dada la naturaleza de este proyecto, un videojuego de cartas con mucha UI, muchas cosas en el HUD, mucha info en pantalla, pensé que me iba a servir inspeccionar las escenas. Pero todavía no le pude sacar mucho jugo. ¡Voy a seguir intentando!

Lo que más me sirvió inspeccionar hasta ahora: ¡los efectos de partículas y los shaders! Hay escenas en que mezclan hasta 6 efectos de partículas simples, que todas juntas y sumando un shader, logran un efecto increíble.

## Godot Meetup Argentina

Fui compartiendo todo esto en Godot Meetup Argentina. Es el grupo de Whatsapp más grande en el que estoy. Ahí pasa de todo: gente comparte el progreso de sus juegos, se organizan eventos, se resuelven dudas, etc. La vez pasada, a uno se le ocurrió agregar la sintaxis que tienen los shaders de recombinar las componentes de un vector de forma fácil en un script, lo que en la jerga se conoce como [swizzling](https://en.wikipedia.org/wiki/Swizzling_(computer_graphics)). Y mandó [un pull request](https://github.com/godotengine/godot/pull/118223) para arriba. Veremos.

## Conclusión

Creo que por esto mismo de tener todo el core en una lib propia, y las animaciones todas en Spine, es que pudieron transicionar de Unity a Godot relativamente fácil.

Así y todo hay mucho que aprender del proyecto decompilado. Vengo jugando el juego, y cuando algo visual me interesa, voy y lo busco en el proyecto para ver cómo lo hicieron.

Está buenísimo ver a profesionales de los videojuegos mucho más alineados con el open source y compartiendo el conocimiento. Claramente es la intención de este team por lo fácil que es decompilarlo. Si hubieran querido, hay formas de obstaculizarla.

De más está decir que es un juegazo, ¡súper recomendable!
