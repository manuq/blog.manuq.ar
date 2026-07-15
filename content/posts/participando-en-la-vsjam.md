+++
date = '2025-11-16T00:00:00-00:00'
draft = false
title = 'participando en la VsJam'
tags = ['gamedev','python','pycamp','pyar']
summary = 'dos semanas alocadas haciendo un juego para una consola muy peculiar'
+++

[¡Esta fue mi entrega](https://github.com/ventilastation/vsdk/pull/81) para la ventilastation jam! (incluye video). El juego que me salió en el poco tiempo que tuve para dedicarle, en un par de semanas. Me divirtí a lo loco. Ayudó mucho que lloviera el finde y no haya podido ir a navegar. Paso a contar un poco...

## tres pycamps

...resumen mi historia con la [ventilastation](https://ventilastation.protocultura.net/):

- 2013: El pycamp en que los vi revolear una tira de leds para escribir "hola mundo" en el aire. Meses más tarde, mi amigo alecu nos sorprendía con el *"super ventilagon"*, su port del [super hexagon](https://superhexagon.com/). Todavía más me sorprendí cuando lo pude jugar y comprobar que el port era tan preciso e hipnotizante como el original.

- ¿2018? El pycamp en que junto con SAn empezamos a hacer el emulador para la ventilastation en [pyglet](https://pyglet.org/), mientras alecu se peleaba con [micropython](https://micropython.org/).

- 2025: Mucho más acá en el tiempo... ¡marzo de este año! El pycamp en que hice assets para el "a jugar con vugo" (juego inspirado en [el programa de televisión](https://es.wikipedia.org/wiki/A_jugar_con_Hugo)), teniendo a la ventilastation real a mano.

(Qué es un pycamp no se puede sintetizar, merece posteo aparte. Pero es básicamente una desconferencia de [la comunidad de python argentina](https://www.python.org.ar/) que tiene su propia idiosincrasia. Yo me suelo sumar a los videojuegos.)

La ventilastation es un proyecto espectacular por varias razones: el hardware y software libre, que se pueda programar en (micro)python, que el microchip esté girando a toda velocidad junto con los leds, la estética hacker/punk/contestataria de los juegos.

## la jam

Me enteré una semana tarde de la jam online pero decidí sumarme igual. ¡Hacía [muucho](https://github.com/manuq/aereo.manuq.ar) que no me sumaba a una jam! Trabajamos exclusivamente en el emulador, compartiendo el progreso en el discord del evento. Y en tres sesiones, los jueves (dos para mí) alecu nos mostraba cómo se veía lo que habíamos pusheado en el hardware real, estrimeando la cámara en el discord, apuntándola de lleno al ventilador. Le encontró la vuelta a sincronizar ambas velocidades (la de la cámara y la del venti) para que se vea bastante fiel.

Empecé instalando [el vsdk](https://github.com/ventilastation/vsdk) adentro de [un toolbx](https://containertoolbx.org/). Dejo los pasos [en este gist](https://gist.github.com/manuq/bbfc2fbd87a2acd72d5a1da865511dbe) para quien guste de usar sistemas inmutables como yo.

Mi idea era continuar el "a jugar con vugo". De aquella vez me había llevado como experiencia:
- Qué tipos de assets quedan mal para los tiles del camino / túnel. Se van achicando muy rápido en el eje Y. Pasada la mitad del túnel el tile de 16 pixeles de altura se muestra en 4 [arxeles](https://github.com/ventilastation/vsdk/blob/main/docs/developers-guide.md#part-iv-ventilastation-display-and-sprites) o menos.
- Que no hay que poner fondos brillantes. ¡Mejor dejar zonas oscuras!

Pero me malcopé con esto y perdí bastante tiempo, sobre todo con workarounds que aparentaban verse bien en el emulador pero se demostró no ser así en el hardware real. Mi [primer pull request](https://github.com/ventilastation/vsdk/pull/54) (incluye video) fue una demo de un túnel que va y viene, nada más.

## tincho vrunner

Justo hace poco Nico, un amigo periodista que trabaja en el diario local, publicó [una crónica](https://www.ellitoral.com/area-metropolitana/video-viral-tincho-carpincho-jorge-alvarez-martin-familia-periodista-personaje-realizador-canal13-santafe-islas-capibara-muneco-mascota-abuelo-lobato_0_bJrUxksHhR.html) sobre un personaje autóctono de nuestra cultura pop. Y se me ocurrió [meterlo como personaje en el juego](https://github.com/ventilastation/vsdk/pull/56). Esto también me dio pilas para seguir la jam, meter gameplay, y convertir la demo en un juego posta: el juego de tincho carpincho. Tener un tema o algo para inspirarse está bueno. Se puede leer más sobre tincho en el [README](https://github.com/ventilastation/vsdk/tree/main/apps/micropython/apps/tincho_vrunner#tincho-vrunner).

Lo convertí en una carrera contrareloj, un "vrunner". La tradición dice que cada título de la ventilastation juega con la letra V. Hice dos niveles y que [se pueda ganar o perder](https://github.com/ventilastation/vsdk/pull/65) (video en el link). En el primer nivel el objetivo es ir "palante", hacia adentro. Y en el otro el objetivo es ir "patrás", o hacia afuera, rebotando en las... ¿cajas? ¿almohadas? ¿piedras?. Hay bloques rojos que te frenan, que después se convirtieron en yuyos en el [aseprite](https://www.aseprite.org/).

El *sdk* es muy simple, todo lo que se puede hacer entra [en tres slides](https://docs.google.com/presentation/d/1gfKrzKq1-QdnFjiBYQB6Z456wWDf1JxnY42-vLq9Bws/):
- la clase **Sprite**. Con setters y getters como `Sprite.y() -> int`, `Sprite.set_y(int)`, `Sprite.set_perspective(int)`
- la clase **Scene**. Con métodos a redefinir como `Scene.on_enter()`, `Scene.step()`
- el singleton **director**. Con métodos como `director.push(scene)`, `director.was_pressed(joy_const)`, `director.sound_play(filename)`

Viniendo de trabajar día a día con [godot](https://godotengine.org/) donde toodo es posible, las restricciones de la ventilastation son aire fresco para mí, y un re buen disparador para crear. Es algo sobre lo que estuve reflexionando hace poco en el *game club* del laburo, donde jugamos al [minit](https://minitgame.com/) (un juego con una paleta de 1 bit).

Por ejemplo en [threadbare](https://github.com/endlessm/threadbare) tenemos capas y capas de tiles. Varios de los cuales quedan tapados. Por lo que a menos que el engine esté haciendo algo inteligente, se deben estar dibujando cosas innecesariamente. Y como el hardware actual de una compu personal sobra para el juego, no importa. En cambio en la ventilastation hay que cuidar la memoria, y no se pueden estar instanciando sprites en el medio del *game loop*. Para los tiles, por ejemplo, tengo una lista fija de sprites que voy reusando a lo largo del túnel. Cuando las tiras horizontales de tiles salen por afuera del círculo, se vuelven a poner en el centro, poniendo la imagen (el frame) que corresponde a esa altura del túnel. Lo mismo hago con los props.

Lo particular de la ventilastation es su pantalla circular, que es super cool, y que las coordenadas sean radiales. Hay 3 modos de perspectiva para un sprite, y dominarlas es re importante para hacer los juegos:

- Modo 0: yo lo llamo "fullscreen". Reproyecta la imagen en coordenadas cartesianas para que se vea tal cual. Con esta hice los fondos, por ejemplo el carpincho pescando de la pantalla inicial.
- Modo 1: yo lo llamo "túnel". La imagen aparece doblada y rotada según la coordenada X y se va achicando al aumentar la coordenada Y, hasta desaparecer en el centro, sin perder su relación de aspecto. Con esta hice el suelo y los props.
- Modo 2: yo lo llamo "HUD". Como la anterior, la imagen aparece doblada y rotada según la coordenada X. Pero en las Y siempre ocupa la misma cantidad de arcos (que son 54 en total), entonces al moverla en las Y se va deformando (cambiando el *aspect ratio*). Con esta hice al player que corre en loop, y los carteles. Se evidencia cómo se deforma en los carteles que animé en vertical con la consignas: "llegá al fondo", "llegá afuera". ¡Hace un lindo efecto de *squash & stretch* que da para aprovechar la próxima!

¡Operador módulo (`%`) por todas partes! Para las animaciones cuadro a cuadro se ajusta la velocidad así:

```
self.cur_frame = (self.cur_frame + 1) % 256
self.player.set_frame((self.cur_frame // 16) % 4)
```

Eso es adentro del método `step()` de la escena. Hace que el sprite de tincho cambie cada 16 steps, mostrando la animación de 4 cuadros de duración, en loop.

Una vez que tuve algo de gameplay volví a iterar los assets. Agregué carteles tipo "ganaste" para informar a les jugadores, comunicar el objetivo y los controles. Para los efectos de sonido retro usé el generador [sfxr](https://sfxr.me/) que va bien con la onda de la consola. Jugando con los sliders hice tres variantes de cada uno. El código los randomiza así:

```
director.sound_play("tincho_vrunner/powerup%d" % randrange(3))
```

Más allá de estos *snippets* no hay mucho que rescatar [del código](https://github.com/ventilastation/vsdk/blob/main/apps/micropython/apps/tincho_vrunner/tincho_level.py), que es código de jam. Digamos que no sigue los más altos estándares de la industria.

Por último iteré en el diseño de los dos niveles y tunié un poco la mecánica. Pedí ayuda con la música en el discord y [JuanElHongo](https://juanelhongo.itch.io/) me pasó varias que tenía, de las cuales una iba como piña. Adentro.

Me encantó ver el proceso de los otros juegos de la jam, y aunque no hubo tanta interacción entre nosotres ¡el conjunto de juegos quedó buenísimo!

## ¿pos jam?

Estas son cosas que me quedaron en el tintero, lo que me gustaría hacer en caso retomar el desarrollo del juego:

- Mejorar las colisiones. Recibí re buen feedback sobre esto y es algo que también había notado en el emulador. Por cuestiones de tiempo usé la detección de colisiones que viene con la clase Sprite. Pero casi siempre en gamedev uno termina usando una colisión diferente al asset, más chica o más grande, para hacer al juego menos gorra, menos punitivo. También es raro que no colisione cuando va para atrás, pero es lo que habilita la mecánica de rebote.
- Arreglar bug: no se reproduce la música en el nivel 2.
- Mejorar la definición de los niveles así se pueden editar más rápido.
- Agregar un par de niveles más. Aprovechar más la mecánica de rebote, de ir para atrás, que es como el distintivo del juego.
