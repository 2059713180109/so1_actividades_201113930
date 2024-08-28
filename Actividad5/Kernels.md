# Tipos de Kernel


## Kernel Monolítico

-   Es el tipo de kernel más antiguo y simple.
-   Todas las funciones y servicios del sistema operativo se ejecutan en el mismo espacio de memoria.
-   Los controladores de dispositivos y los servicios del sistema están directamente integrados en el kernel.
-   Un fallo en cualquier parte del kernel puede afectar a todo el sistema.
-   Ejemplos de sistemas operativos con kernel monolítico son Linux y Windows (en su mayoría).

## Kernel en Capas

-   Divide el kernel en capas, donde cada capa proporciona un conjunto específico de funciones y servicios.
-   Cada capa se comunica con la capa inferior a través de interfaces bien definidas.
-   Permite una mayor modularidad y aislamiento de componentes.
-   Puede tener un mejor manejo de errores, ya que un fallo en una capa no afecta a otras capas.
-   Ejemplo de sistema operativo con kernel en capas es el clásico sistema operativo MINIX.

## Microkernel
- Tambien se llaman Kernel en espacios separados
-   Divide el kernel en el espacio del núcleo (que proporciona servicios esenciales) y varios espacios de usuario (que proporcionan servicios adicionales).
-   Mueve la mayor cantidad de funciones posibles fuera del kernel al espacio de usuario.
-   Permite un diseño más seguro y robusto, ya que las funciones en el espacio de usuario son menos propensas a causar fallos en el núcleo.
-   Facilita el desarrollo y la depuración, ya que los servicios en el espacio de usuario pueden actualizarse y reemplazarse sin afectar el núcleo.
-   Ejemplo de sistema operativo con microkernel es el sistema operativo QNX.

## Kernel Híbrido

-   Es una combinación de características de los kernels monolíticos y los kernels en espacios separados.
-   Algunos servicios esenciales se ejecutan en el espacio del núcleo (modo kernel), mientras que otros servicios se ejecutan en espacios de usuario (modo usuario).
-   Ofrece un equilibrio entre el rendimiento y la seguridad.
-   Ejemplo de sistema operativo con kernel híbrido es macOS (anteriormente OS X).

# User Vs Kernel Mode
El modo usuario es el nivel de ejecución en el que se ejecutan las aplicaciones y programas de usuario con privilegios restringidos, mientras que el modo kernel es el nivel de ejecución donde se ejecuta el núcleo del sistema operativo con privilegios elevados y acceso completo a todos los recursos del sistema. El cambio entre el modo usuario y el modo kernel se realiza a través de llamadas de sistema, que permiten que las aplicaciones soliciten servicios y recursos del sistema operativo en un entorno controlado y seguro.


# Interruptions vs traps

## Interrupciones
-  Las interrupciones son señales enviadas por el hardware al procesador para indicar que necesita atención inmediata. 
- Permiten que el sistema operativo responda a eventos externos (como una tecla presionada o la finalización de una operación de I/O) sin tener que estar constantemente revisando el estado de estos dispositivos (polling).

## Traps
-  Las trampas son eventos generados por el procesador que resultan de la ejecución de una instrucción de software que requiere la atención del sistema operativo.
- Permiten al sistema operativo manejar condiciones especiales o errores en el programa que está ejecutando, como errores de división por cero, accesos a memoria inválidos, o intentos de ejecutar una instrucción no permitida.