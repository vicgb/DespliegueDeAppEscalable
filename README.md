# DespliegueDeAppEscalable

# Objetivo

Creación de un escenario completo de despliegue de una aplicación fiable y escalable

# Descripción

El  objetivo  de  esta  práctica  es  la  implementación  de  la  arquitectura  completa para  el despliegue de una aplicación de juegos sencilla de forma escalable y fiable. Como aplicación se utilizará proyecto QUIZ utilizado previamente en otras asignaturas. En la arquitectura de despliegue del  proyecto  se  utilizarán  los  elementos  típicos  de  las  arquitecturas  actuales:  firewall, balanceador  de  carga,  servidores  front-end  corriendo  la  aplicación,  bases  de  datos  y servidores de almacenamiento, tal como aparece representado en la Figura adjuntada.

La aplicación QUIZ se configurará para que utilice una base de datos MariaDB,que correrá en el  servidor  de  bases  de  datos  y  para  que  almacene  las  imágenes en  el  cluster  de almacenamiento  que  se  creará  utilizando  el  sistema  de  ficheros  distribuido  Glusterfs.  El balanceador de carga se ocupará de distribuir la carga entre los tres servidores que soportan la aplicación QUIZ(S1, S2 y S3) y el cortafuegos de entrada, basado en el software de Linux FirewallBuilder, se ocupará de filtrar todo el tráfico proveniente de Internet y dejar pasar únicamente el destinado a la aplicación. La  arquitectura  debe  garantizar  la  escalabilidad  de  la  aplicación, permitiendoampliar fácilmente el número de servidores dedicados según crezca el número de usuarios. Por ello se partede un sistema con un número determinado de servidores, pero se prevé añadir servidores (reales o virtuales) según crezca la demanda del servicio. 

Los requisitos mínimos a cumplir son los siguientes:

•El servicio QUIZdebe estar accesible a los clientes en el puerto estándar de web (80). 

•El  balanceador  debe  balancear  la  carga  entre  todos  los  servidores  utilizando  un algoritmo round-robin.

•El cluster de almacenamiento, que se utilizará para almacenar las imágenes utilizadas por  el QUIZ,se  debe  configurar  de  forma  que utilice  GlusterFS  y  que replique  la información entre los tres servidores (nas1, nas2 y nas3).

•La información manejada por el QUIZse debe almacenar en el servidor de bases de datos, utilizando MariaDB(recomendado)u otro gestor debases de datos soportado por QUIZ. 

En cualquier caso,debe utilizarse una base de datos externa desplegada en el servidor destinado a tales efectos. Por lo tanto,no puede utilizarse SQLite
