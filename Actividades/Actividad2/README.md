# Actividad 2

A su equipo de desarrollo se le ha pedido una cotización para construir un sistema de comunicación entre personas.

Algunos de los requisitos que se le ha pedido que considere son:

1. Dada la poca maduración del proyecto, en una primera etapa el sistema solamente podrá ser utilizado por usuarios que un administrador haya registrado manualmente. Se debe validar que solamente emisores válidos puedan utilizar el sistema.

2. Un usuario puede enviar un mensaje en distintos formatos, los cuáles pueden ser mensaje de texto, correo electrónico y audio.

3. Un emisor de un mensaje puede utilizar plantillas previamente creadas para facilitar el envío masivo de mensajes. Estos mensajes tendrían la misma estructura y formato, pero con la diferencia de que algunos valores en la información enviada dependerían de algún atributo del receptor.

4. Dependiendo del destinatario el sistema podría agregar más información al mensaje. Por ejemplo, si el destinatario es un usuario que no está registrado en el sistema, se debe agregar un enlace a un sitio que describa la aplicación. Se debe dar la flexibilidad de agregar y quitar este tipo de comportamiento dinámicamente.

5. Para abaratar costos de desarrollo, se piensa utilizar proveedores externos para ejecutar el envío de los mensajes en distintos formatos. Se piensa que estos proveedores pueden cambiar continuamente, dependiendo de su rendimiento, disponibilidad y costos. También debe considerar que estos proveedores pueden implementar distintas interfaces para ser consumidos.

6. Los proveedores que envían los mensajes del sistema tienen distintos costos dependiendo de ciertas características del mensaje (e.g. cantidad de receptores, cantidad de caracteres). Considerando esto, se deben diseñar reglas para la utilización de los proveedores que garanticen la utilización del proveedor más económico.

7. Para mantener la consistencia de la información enviada, los mensajes sucesivos de un emisor a un receptor se envían de forma secuencial. Esto quiere decir que para efectivamente enviar un mensaje se debe tener certeza que el receptor ha recibido todos los mensajes anteriores. Si el envío de un mensaje falla, se debe seguir intentado antes de tratar con los siguientes mensajes encolados.

Su jefe le ha pedido que aterrice el sistema a través de un posible diseño. Además, él piensa que varios de los requisitos solicitados se pueden abstraer a problemas que ya han sido solucionados anteriormente. Para corroborar esto y ayudarlo en su labor, su jefe le pide que:

<ol type="a">
  <li>Detecte 7 patrones de diseño GoF que podrían ser utilizados. Para cada uno justifique como se relaciona con los requisitos y cómo beneficia al diseño del sistema.</li>
  <li>Escoja 3 patrones de los detectados y realice un diagrama UML que refleje cómo interactúan los participantes del sistema. Puede abstraer los componentes que interactúan con el usuario, lo importante son los componentes que representan participantes de los patrones de diseño.</li>
</ol>
