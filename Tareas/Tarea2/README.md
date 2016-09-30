# Tarea 2

## Objetivos

* Detectar y aplicar patrones de diseño para resolver problemas computacionales.
* Aplicar sintaxis **UML 2.0** para definir la estructura de código de un sistema de _software_.

## Introducción

La empresa _Starbuzz Coffee_ se ha hecho conocida mundialmente por su crecimiento exponencial en el mercado del café. Debido a este aumento y su interés en abaratar costos, se han planteado reemplazar a sus baristas por máquinas para tomar pedidos.

En las siguientes secciones de este documento se listan los requisitos que debe satisfacer su aplicación. Si este documento es ambiguo en algún contenido, pueden pedir una aclaración a través de la página de [_issues_](https://github.com/IIC2113-2016-2/syllabus/issues) del curso. Además, cualquier mejora y/o supuesto que realicen deben ser justificado en los documentos que entreguen.

Se les pide realizar en equipos de exactamente 3 personas una aplicación por consola (_command-line interface_) que permita realizar las siguientes funcionalidades.

## Requisitos funcionales

La empresa vende distintos tipos de bebestibles, entre los cuales se consideran _espresso_, _cappuccino_, _frappuccino_, _macchiato_, té y chocolate caliente. Los bebestibles deberán tener un precio, un tiempo de preparación y una descripción. Deben asumir que estos datos cambiarán frecuentemente, por lo que se deben obtener desde un archivo CSV al inicializar el programa.

Además, cada bebestible tiene efecto asociado sobre la compra. Los efectos son los siguientes:
* _Espresso_: disminuye el tiempo de preparación **total** de la orden en un 20%. Esta reducción se aplica una sola vez por orden.
* _Cappuccino_: aumenta el precio de cada condimento aplicado sobre este en $100.
* _Frappuccino_: por cada condimento aplicado sobre este, aumenta (como interés simple) el precio base de la bebida en un 5%.
* _Macchiato_: tiene 10% de probabilidad de fallar al finalizar la orden y debe empezar de nuevo su preparación.
* Té: sin efecto.
* Chocolate caliente: el nombre del usuario que pidió el producto es mostrado en la interfaz con mayúsculas.

Además, cada uno de estos bebestibles puede ser personalizado por el cliente. Estos pueden agregar a su orden _leche entera_, _leche descremada_, _leche de soya_, _crema_, _helado_, _chocolate_. Los condimentos deberán tener un precio y una descripción. De la misma forma que para los bebestibles, estos valores deben ser extraídos desde un archivo CSV. Además, los clientes pueden hacer todas las combinaciones que quieran e incluso repetir condimentos sobre un mismo producto. Sin embargo, los tipos de leche son agregados de forma excluyente. Por ejemplo, un producto **no** puede contener leche entera y leche descremada.

Igualmente, los condimentos tienen efectos asociados:
* Leche entera: el precio total disminuye en $200. Este descuento se aplica una sola vez por bebestible.
* Leche descremada: sin efecto.
* Leche de soya: aumenta el costo del producto en $300.
* Crema: inserta un espacio entre cada letra del nombre del usuario para que quede e s t é t i c o.
* Helado: tiene 50% de probabilidades de aumentar el costo de la bebida en $500. En caso contrario, solo aumenta en $100.
* Chocolate: si el producto es un chocolate caliente, no tiene costo. En caso contrario, aumenta en $200.

El programa debe ser capaz de aceptar la orden de un cliente, la cual puede contener varios bebestibles, cada uno con varios condimentos.

Al finalizar la orden, el programa debe cobrar al cliente los costos de cada bebestible con sus condimentos agregados. Para esto, la máquina aceptará billetes de 20.000, 10.000, 5.000, 2.000 y 1.000, y monedas de 500, 100, 50 y 10. Luego de que el usuario pague, se le deberá dar vuelto según los billetes disponibles. Si la máquina no puede dar vuelto, el cliente podrá pagar con la cantidad exacta o cancelar la orden. La máquina comienza con las siguientes cantidades para cada tipo:

| Billete   | Cantidad inicial                                             |
|----------:|--------------------------------------------------------------|
| $20.000   | 3                                                            |
| $10.000   | 5                                                            |
| $5.000    | 4                                                            |
| $2.000    | 5                                                            |
| $1.000    | 8                                                            |

| Moneda   | Cantidad inicial                                             |
|----------:|--------------------------------------------------------------|
| $500   | 5                                                            |
| $100   | 10                                                            |
| $50    | 5                                                            |
| $10    | 100                                                            |

Los productos tienen un tiempo de preparación, que cuando se completa se debe notificar al cliente que su orden está lista con un mensaje en pantalla. Mientras se está preparando una orden no se pueden recibir más pedidos.

## Requisitos no funcionales

* **RNF1:** Deben incluir un _README.md_ que indique los pasos para ejecutar la aplicación. **Es responsabilidad de cada alumno asegurarse que se incluya todo lo necesario para la corrección de la tarea**, de manera que todos los RF puedan probarse solo con leer la documentación (_i.e._ sin tener que revisar el código fuente ni agregar archivos al proyecto).

* **RNF2:** Deben respetar las buenas prácticas de Git enseñadas hasta el momento:
  - _Commits_ con nombres descriptivos.
  - _Commits_ atómicos, es decir, responsabilidades claras y separadas.
  - _Commits_ en inglés.


* **RNF3:** Deben desarrollar la aplicación en alguno de los siguientes lenguajes:
  - Ruby ^2.3
  - Python ^3.4
  - Node.js ^6.0


* **RNF4:** Deben utilizar una **guía de estilo** para el lenguaje que escojan (se recomienda que se apoyen a través de _linters_). Además, deben adjuntar la configuración utilizada. Algunas alternativas son:
  - Ruby:
    * [Guía de Estilo](https://github.com/bbatsov/ruby-style-guide)
    * [Linter Rubocop](https://github.com/bbatsov/rubocop)
  - Python:
    * [Guía de Estilo](https://www.python.org/dev/peps/pep-0008/)
    * [Linter Pylint](https://www.pylint.org/)
  - Node.js:
    * [Guía de Estilo](https://github.com/airbnb/javascript)
    * [Linter ESLint](http://eslint.org/)

* **RNF5:** Deben implementar como mínimo 2 patrones de diseño GoF. Para cada patrón utilizado, deben incluir una explicación y justificación del diseño.

* **RNF6:** Deben realizar un diagrama de clases UML 2.0 (**se evaluará su correcta sintaxis**) que refleje el diseño de su aplicación, y la interacción de los patrones de diseño detectados. Para lo anterior, pueden utilizar [draw.io](https://www.draw.io/), u otra aplicación del mismo estilo.

Pueden (y se recomienda) utilizar librerías, gemas, módulos y/o servicios con el fin de externalizar complejidad del programa.

## Entrega

Para inscribir un grupo de trabajo, uno de los integrantes deberá enviar un correo al equipo docente con los nombres de usuario de GitHub de cada integrante y el nombre del grupo. Las personas que no pertenezcan a un grupo antes del día **jueves 6 de octubre a las 23:59**, serán aleatoriamente asignados a uno.

La entrega de cada grupo será a través del repositorio que se les haya asignado para esta tarea. Para la corrección se considerará el último _commit_ a la _branch master_ hasta el día **viernes 14 de octubre a las 23:59**.

## Coevaluación

Al finalizar el plazo de entrega de esta tarea, se publicará una rúbrica para coevaluar a sus compañeros de grupo. Este coeficiente incidirá directamente en la nota individual de cada integrante.

## Política de integridad académica

Los alumnos de la Escuela de Ingeniería de la Pontificia Universidad Católica de Chile deben mantener un comportamiento acorde a la Declaración de Principios de la Universidad.  En particular, se espera que **mantengan altos estándares de honestidad académica**.  Cualquier acto deshonesto o fraude académico está prohibido; los alumnos que incurran en este tipo de acciones se exponen a un Procedimiento Sumario. Es responsabilidad de cada alumno conocer y respetar el documento sobre Integridad Académica publicado por la Dirección de Docencia de la Escuela de Ingeniería (disponible en SIDING).

**En particular, si un alumno copia un trabajo, o si a un alumno se le prueba que compró o intentó comprar un trabajo, obtendrá nota final 1.1 en el curso y se solicitará a la Dirección de Docencia de la Escuela de Ingeniería que no le permita retirar el curso de la carga académica semestral.**

Por _copia_ se entiende incluir en el trabajo presentado como propio, partes hechas por otra persona.  **En caso que corresponda a _copia_ a otros alumnos, la sanción anterior se aplicará a todos los involucrados**.  En todos los casos, se informará a la Dirección de Docencia de la Escuela de Ingeniería para que tome sanciones adicionales si lo estima conveniente.

Obviamente, está permitido usar material disponible públicamente, por ejemplo, libros o contenidos tomados de Internet, siempre y cuando se incluya la referencia correspondiente.
