# Comparación Ruby y Smalltalk

## Diferencias

- no programamos en un ambiente de objetos vivos, sino en archivos que luego se interpretan
    - por eso necesitamos "armarnos" el ambiente con herramientas de desarrollo 
- no declaramos colaboradores locales, se definen cuando se necesitan
- no declaramos colaboradores internos, se definen cuando se necesitan
- en lugar de "objeto mensaje" es "objeto.mensaje"
- no tenemos mensajes de palabra clave
- tenemos más construcciones sintácticas (en lugar de ser resueltas como envío de mensajes a objetos)
    - definición de clases y métodos
    - if
- self puede ser implícito, cuando le enviamos un mensaje (y es convención en Ruby no ponerlo cuando se pueda)
- usamos convención snake_case para nombres de colaboradores y de mensajes
- disponemos de módulos, que son objetos que básicamente pueden tener 2 propósitos:
     - funcionar como espacio de nombres ( _namespace_ ) para poder organizar clases en paquetes
     - definir comportamiento que puede ser incluido en una o más clases (como por ejemplo, protocolo Comparable)

## Similitudes

- tenemos una jerarquía de clases en donde toda clase es subclase de `Object`
- las clases son objetos
- el proceso de instanciación e inicialización es similar (mensaje de clase para instanciar, luego mensaje de instancia para inicializar)
- disponemos de bloques
- disponemos de colecciones con un protocolo muy similar a las de Pharo
- podemos extender clases existentes (por ejemplo, hacer que los números entiendan el mensaje `pesos`)
- usamos convención CamelCase para los nombres de clases
