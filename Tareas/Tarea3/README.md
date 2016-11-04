# Tarea 3

## Objetivos

* Detectar y corregir _code smells_.
* Realizar tests unitarios.
* Desarrollar código bajo métricas exigentes.

## Introducción

En el repositorio [IIC2113-2016-2/refactor-todos](https://github.com/IIC2113-2016-2/refactor-todos) encontrarán un código base que sirve para generar listas de _TODOs_. Algunas funcionalidades y _tests_ ya fueron implementados, pero con una baja calidad. En esta tarea se le pide que detecte fallas en el código base, mejore la implementación, agregue más funcionalidades y genere tests.

## Requisitos funcionales

Además de detectar problemas en el código base y mejorar la implementación, se le pide:

* **RF1:** Poder agregar múltiples _TODOs_ con un sólo comando.

* **RF2:** Poder eliminar _TODOs_ (de forma individual o múltiples al mismo tiempo).

* **RF3:** Agregar categorías a los _TODOs_ y que se pueda filtar en base a ellas. Un _TODO_ puede tener más de una categoría.

* **RF4:** Asignar un responsable para un _TODO_, y que se pueda filtar en base a ellos.

* **RF5:** Agregar un estado para los _TODO_, el cual específica si está en proceso o ya fue realizado. También se deben agregar filtros para este atributo.

* **RF6:** Imprimir en consola un resumen de toda la lista de _TODOs_ presentes con sus datos. Este resumen debe agruparlos según diferentes configuraciones:
  - por plazo final
  - por encargados
  - por categorías

## Requisitos no funcionales

* **RNF1:** Deben incluir un _README.md_ que indique los pasos para ejecutar la aplicación. **Es responsabilidad de cada alumno asegurarse que se incluya todo lo necesario para la corrección de la tarea**, de manera que todos los RF puedan probarse solo con leer la documentación (_i.e._ sin tener que revisar el código fuente ni agregar archivos al proyecto).

* **RNF2:** En el archivo _README.md_ también debe indicar los _code smells_ presentes en el código base, qué problema conllevan y cómo los solucionó.

* **RNF3:** Deben respetar las buenas prácticas de Git enseñadas hasta el momento:
  - _Commits_ con nombres descriptivos.
  - _Commits_ atómicos, es decir, responsabilidades claras y separadas.
  - _Commits_ en inglés.


* **RNF4:** Sin modificar la configuración de cada uno, para los siguientes comandos se pide:
  - El comando `rake test` no debe arrojar error. Para ello, además de pasar los tests deben tener un _coverage_ de 95%.
  - El comando `rubocop` no debe arrojar error.
  - El comando `rubycritic` debe entregar un score superior a 95.


* **RNF5:** Se tomará en cuenta la calidad de los tests generados.

## Entrega

Esta tarea es individual, por lo que asignará un repositorio para cada alumno. La entrega será a través del repositorio que se les haya asignado para esta tarea. Para la corrección se considerará el último _commit_ a la _branch master_ hasta el día **viernes 18 de noviembre a las 23:59**.

## Política de integridad académica

Los alumnos de la Escuela de Ingeniería de la Pontificia Universidad Católica de Chile deben mantener un comportamiento acorde a la Declaración de Principios de la Universidad.  En particular, se espera que **mantengan altos estándares de honestidad académica**.  Cualquier acto deshonesto o fraude académico está prohibido; los alumnos que incurran en este tipo de acciones se exponen a un Procedimiento Sumario. Es responsabilidad de cada alumno conocer y respetar el documento sobre Integridad Académica publicado por la Dirección de Docencia de la Escuela de Ingeniería (disponible en SIDING).

**En particular, si un alumno copia un trabajo, o si a un alumno se le prueba que compró o intentó comprar un trabajo, obtendrá nota final 1.1 en el curso y se solicitará a la Dirección de Docencia de la Escuela de Ingeniería que no le permita retirar el curso de la carga académica semestral.**

Por _copia_ se entiende incluir en el trabajo presentado como propio, partes hechas por otra persona.  **En caso que corresponda a _copia_ a otros alumnos, la sanción anterior se aplicará a todos los involucrados**.  En todos los casos, se informará a la Dirección de Docencia de la Escuela de Ingeniería para que tome sanciones adicionales si lo estima conveniente.

Obviamente, está permitido usar material disponible públicamente, por ejemplo, libros o contenidos tomados de Internet, siempre y cuando se incluya la referencia correspondiente.
