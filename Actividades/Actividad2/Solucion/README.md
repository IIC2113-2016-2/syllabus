# Actividad 2 - Posible solución

> Revisar archivos adjuntos: archivo con código y `.pdf` donde está su UML.

## RF1

La idea es no tener que modificar la aplicación para controlar quienes la usan y quiénes no. Podemos usar el patrón _Proxy_: envolvemos la aplicación en un proxy que controlará el acceso de los usuarios.

## RF2

Vemos claramente la necesidad de usar herencia. Tenemos dos opciones:

* Patrón _Factory Method_
* Patrón _Builder_

Podemos incluso mezclar ambos. Pero por simplicidad nos quedaremos con el patrón _Factory Method_. Así logramos mantener un uso centralizado al momento de tener que componer un mensaje.

## RF3

Una manera de reutilizar plantillas con ciertos atributos ya definidos sería con un patrón _Prototipo_. Podemos instanciar un prototipo inicial y a medida que se necesiten variaciones podemos clonarlo y cambiar solo los atributos necesarios.

## RF4

A través del patrón _Decorator_ se puede agregar información a los mensajes dinámicamente. Cuando se envía un mensaje a un usuario externo al sistema, la aplicación puede decorar el mensaje original, agregando la información que sea necesaria. Este mecanismo permite que el mensaje quede intacto hasta que en tiempo de ejecución se decida si es necesario agregar más información.

## RF5

Puesto que es muy posible que los proveedores tengan interfaces distintas, los tenemos que adaptar a una común para todos. En este sentido, nos conviene usar un patrón _Adapter_. Posteriormente se podría combinar con uno _Strategy_.

## RF6

Una manera de pensar un sistema de reglas es como un flujo con filtros. Cada filtro evalúa si le conviene enviar el mensaje. Entonces nos conviene utilizar el patrón _Chain of Responsibility_.

## RF7

Para encolar el envío de mansajes se puede utilizar el patrón _Command_, para que las solicitudes se ejecuten posteriormente (por ejemplo, una vez se confirme la recepción del mensaje).
