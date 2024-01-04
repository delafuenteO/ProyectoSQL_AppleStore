# Proyecto de SQL sobre Apple Store

Este proyecto consiste en trabajar bajo el supuesto de que un desarrollador de aplicaciones nos contrato para así darle una mejor idea sobre el mercado de la AppStore, con el fin de estar más orientado y decidir que aplicación desarrollar, para esto analizamos los datos de las aplicaciones disponibles en la tienda de Apple, usando el lenguaje de consulta estructurado (SQL). El objetivo es extraer información relevante sobre las características, categorías, calificaciones, precios y reseñas de las aplicaciones, y responder a preguntas de negocio como:

- ¿Qué categorías de aplicaciones son las más populares?
- ¿Las apps de pago tienen mejor valoración que las gratis?
- ¿La cantidad de idiomas por aplicacion afecta en su valoración?
- ¿Que generos son los peores evaluados?
- ¿Habrá correlación entre la descripción de una aplicación y la evaluación de esta?

## Datos

Los datos utilizados para este proyecto provienen de este repositorio, que contiene un archivo distintos archivos CSV con información de más de 7000 aplicaciones de iOS. Los archivos tiene las siguientes columnas:

### appleStore.csv
- "id" : ID de la aplicación
- "track_name": Nombre de la aplicación
- "size_bytes": Tamaño (en bytes)
- "currency": Tipo de moneda
- "price": Precio (en la moneda correspondiente)
- "rating_count_tot": Número total de calificaciones
- "rating_count_ver": Número de calificaciones para la versión actual
- "user_rating" : Calificación promedio (para todas las versiones)
- "user_rating_ver": Calificación promedio (para la versión actual)
- "ver" : Versión actual
- "cont_rating": Clasificación por contenido
- "prime_genre": Género principal
- "sup_devices.num": Número de dispositivos compatibles
- "ipadSc_urls.num": Número de capturas de pantalla mostradas
- "lang.num": Número de idiomas disponibles
- "vpp_lic": Licencia VPP activada

### appleStore_description.csv
- id : ID de la aplicación
- track_name: Nombre de la aplicación
- size_bytes: Tamaño (en Bytes)
- app_desc: Descripción

## Requisitos

Para ejecutar este proyecto, se necesita tener instalado:

- [SQLite](^2^): Sistema de gestión de bases de datos relacionales
- [DB Browser for SQLite](^3^): Herramienta gráfica para crear, diseñar y editar archivos de bases de datos compatibles con SQLite

## Instalación

Para instalar este proyecto, se debe clonar este repositorio en tu máquina local usando el siguiente comando:

```bash
git clone https://github.com/delafuenteO/ProyectoSQL_AppleStore.git
```
