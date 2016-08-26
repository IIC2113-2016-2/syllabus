# Tarea 1

## Objetivos

* Justificar decisiones de diseño en base a supuestos razonables.
* Aplicar sintaxis **UML 2.0** para definir un sistema de _software_ en torno al **Modelo 4+1**.
* Investigar conceptos relacionados a _git_, _APIs_ y desarrollo de líneas de comando.

## Introducción

Muchos de los cursos del Departamento de Ciencia de la Computación utilizan [GitHub](https://github.com/) o [Bitbucket](https://bitbucket.org/) para que los alumnos entreguen sus tareas.

Se suele hacer una organización en GitHub con un repositorio principal llamado _syllabus_ con información sobre el curso (ayudantes, profesores, programa, _etc._).

Como los encargados están cansados de hacer `git clone` y `git pull` para cada repositorio, nace la necesidad de diseñar una herramienta que ayude en el control de las organizaciones que se utilizan.

Por esta razón, se les pide realizar en equipos de exactamente 3 personas una aplicación por consola (_CLI_) que permita facilitar la labor de administrar dichas organizaciones.

Se espera algo del estilo:

```sh
$ cursosdcc repositories --organization IIC2113-2016-2 --sort name
```

En las siguientes secciones de este documento se listan los requisitos que debe satisfacer su aplicación. Si este documento es ambiguo en algún contenido, pueden pedir una aclaración a través de la página de [_issues_](https://github.com/IIC2113-2016-2/syllabus/issues) del curso. Además, cualquier mejora y/o supuesto que realicen deben ser justificado en los documentos que entreguen.

## Requisitos funcionales

* **RF1:** Poder consumir información de GitHub y Bitbucket (solamente para repositorios en formato _git_). Si un proveedor no entrega la información solicitada por el usuario se debe advertir del problema. **Deben procurar que su aplicación permita agregar más proveedores de manera sencilla**.

* **RF2:** Listar los repositorios de una organización, y retornar información relevante de manera resumida.

* **RF3:** Revisar si un repositorio existe en una organización, y retornar información relevante sobre este.

* **RF4:** Entregar información agregada de todos los repositorios de una organización. Esta información puede ser cantidad de _forks_, _stargazers_, _watchers_ y _open issues_.

* **RF5:** Obtener el último _commit_ (con _hash_, fecha y responsable) para cada repositorio de una organización.

* **RF6:** Listar y filtrar información relevante de todos los _issues_ de una organización. Los filtros a aplicar son en base a respositorios, fecha, autores, responsables, estado y _labels_.

* **RF7:** Listar y filtrar información relevante de todos los _pull requests_ de una organización. Los filtros a aplicar son en base a repositorios, estado y _base branch_.

* **RF8:** Generar el archivo _README.md_ para un repositorio _syllabus_, a partir de un archivo JSON (pueden basarse en [este _template_](https://github.com/IIC2113-2016-2/syllabus/blob/master/Tareas/Tarea1/template.json) y hacer los cambios que estimen convenientes). **Deben procurar que su aplicación permita agregar más formatos de manera sencilla**.

* **RF9:** Retornar información relevante del mayor colaborador de una organización, considerando todos los repositorios.

* **RF10:** Todas las funcionalidades anteriores deben soportar el uso de un _flag_ que indica si la consulta se hará para repositorios privados y/o públicos. La autenticación con los proveedores se puede realizar a través de [_Basic Authentication_](https://en.wikipedia.org/wiki/Basic_access_authentication).

## Requisitos no funcionales

* **RNF1:** Deben incluir un _README.md_ que indique la interfaz de la aplicación, y los requisitos para ejecutarla. **Es responsabilidad de cada alumno asegurarse que se incluya todo lo necesario para la corrección de la tarea**, de manera que todos los RF puedan probarse solo con leer la documentación (_i.e._ sin tener que revisar el código fuente ni agregar archivos al proyecto).

* **RNF2:** Deben respetar las buenas prácticas de _git_ enseñadas hasta el momento:
  - *Commits* con nombres descriptivos.
  - *Commits* atómicos, es decir, responsabilidades claras y separadas.
  - *Commits* en inglés.


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


* **RNF5:** Deben realizar diagramas UML 2.0 (**se evaluará su correcta sintaxis**) que reflejen el diseño de su aplicación. Para lo anterior, pueden utilizar [draw.io](https://www.draw.io/), u otra aplicación del mismo estilo. Los diagramas mínimos requeridos son:
  - Diagrama de Clases
  - Diagrama de Comunicación
  - Diagrama de Secuencia
  - Diagrama de Actividad (o Flujo)
  - Diagrama de Componentes
  - Diagrama de Despliegue
  - Casos de uso


* **RNF6:** Para cada diagrama, deben incluir una breve explicación y justificación del diseño.

* **RNF7:** Los diagramas deben estar organizados según el modelo 4+1.

Pueden (y se recomienda) utilizar librerías, gemas, módulos y/o servicios con el fin de externalizar complejidad del programa.

## Entrega

A través de este [_link_](https://classroom.github.com/group-assignment-invitations/f36198ac4646e184498aa16f053b022e) una persona de cada grupo debe crear un repositorio. Luego, los demás miembros de ese grupo deben ingresar al mismo _link_ y seleccionar el repositorio creado por su compañero. La entrega de cada grupo será a través del repositorio que hayan creado.

Para la corrección se considerará el último _commit_ a la _branch master_ hasta el día viernes 9 de septiembre a las 23:59.

## Coevaluación

Al finalizar el plazo de entrega de esta tarea, se publicará una rúbrica para coevaluar a sus compañeros de grupo. Este coeficiente incidirá directamente en la nota individual de cada integrante.

## Política de integridad académica

Los alumnos de la Escuela de Ingeniería de la Pontificia Universidad Católica de Chile deben mantener un comportamiento acorde a la Declaración de Principios de la Universidad.  En particular, se espera que **mantengan altos estándares de honestidad académica**.  Cualquier acto deshonesto o fraude académico está prohibido; los alumnos que incurran en este tipo de acciones se exponen a un Procedimiento Sumario. Es responsabilidad de cada alumno conocer y respetar el documento sobre Integridad Académica publicado por la Dirección de Docencia de la Escuela de Ingeniería (disponible en SIDING).

**En particular, si un alumno copia un trabajo, o si a un alumno se le prueba que compró o intentó comprar un trabajo, obtendrá nota final 1.1 en el curso y se solicitará a la Dirección de Docencia de la Escuela de Ingeniería que no le permita retirar el curso de la carga académica semestral.**

Por _copia_ se entiende incluir en el trabajo presentado como propio, partes hechas por otra persona.  **En caso que corresponda a _copia_ a otros alumnos, la sanción anterior se aplicará a todos los involucrados**.  En todos los casos, se informará a la Dirección de Docencia de la Escuela de Ingeniería para que tome sanciones adicionales si lo estima conveniente.

Obviamente, está permitido usar material disponible públicamente, por ejemplo, libros o contenidos tomados de Internet, siempre y cuando se incluya la referencia correspondiente.
