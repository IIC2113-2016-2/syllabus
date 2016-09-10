# Actividad 2 - Posible solución

> Revisar archivos adjuntos: archivo con código y `.pdf` donde está su UML.

## RF1

La idea es no tener que modificar la aplicación para controlar quienes la usan y quienes no.

Podemos usar el patrón Proxy: envolvemos la aplicación en un proxy que controlará el acceso de los usuarios.

## RF2

Vemos claramente la necesidad de usar herencia. Tenemos dos opciones:

* Patrón Factory
* Patrón Builder

Podemos incluso mezclar ambos. Pero por simplicidad nos quedaremos con el Factory. Así logramos mantener un uso centralizado al monento de tener que componer un mensaje.

## RF3

Una manera de reutilizar plantillas con ciertos atributos ya definidos sería con un Prototipo. Podemos instanciar un prototipo inicial y a medida que se necesiten variaciones podemos clonarlo y cambiar solo los atributos necesarios.

## RF4

???

## RF5

Puesto que es muy posible que los proveedores tengan interfaces distintas, los tenemos que adaptar a una común para todos. En este sentido, nos conviene usar un patrón Adaptador. Posteriormente se podría combinar con uno Estrategía.

## RF6

Una manera de pensar un sistema de reglas es como un flujo con filtros. Cada filtro evalúa si le conviene enviar el mensaje. Entonces nos conviene usar un Chain of Responsibility.
