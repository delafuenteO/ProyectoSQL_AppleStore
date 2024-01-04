# Proyecto de SQL sobre Apple Store

Este proyecto consiste en analizar los datos de las aplicaciones disponibles en la tienda de Apple, usando el lenguaje de consulta estructurado (SQL). El objetivo es extraer información relevante sobre las características, categorías, calificaciones, precios y reseñas de las aplicaciones, y responder a preguntas de negocio como:

- ¿Qué categorías de aplicaciones son las más populares?
- ¿Las apps de pago tienen mejor valoración que las gratis?
- ¿La cantidad de idiomas por aplicacion afecta en su valoración?
- ¿Que generos son los peores evaluados?
- ¿Habrá correlación entre la descripción de una aplicación y la evaluación de esta?

## Datos

Los datos utilizados para este proyecto provienen de [https://github.com/delafuenteO/ProyectoSQL_AppleStore/tree/main](^1^), que contiene un archivo CSV con información de más de 7000 aplicaciones de iOS. El archivo tiene las siguientes columnas:

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

## Requisitos

Para ejecutar este proyecto, se necesita tener instalado:

- [SQLite](^2^): Sistema de gestión de bases de datos relacionales
- [DB Browser for SQLite](^3^): Herramienta gráfica para crear, diseñar y editar archivos de bases de datos compatibles con SQLite
- [Python](^4^): Lenguaje de programación interpretado
- [Pandas](^5^): Biblioteca de Python para análisis de datos
- [Matplotlib](^6^): Biblioteca de Python para visualización de datos

## Instalación

Para instalar este proyecto, se debe clonar este repositorio en tu máquina local usando el siguiente comando:

```bash
git clone https://github.com/<tu_usuario>/proyecto-sql-apple-store.git
```

Luego, se debe crear una base de datos SQLite con el nombre `apple_store.db` y cargar el archivo CSV con los datos de las aplicaciones. Esto se puede hacer usando DB Browser for SQLite, siguiendo estos pasos:

- Abrir DB Browser for SQLite y seleccionar la opción "Nueva base de datos"
- Escribir el nombre `apple_store.db` y guardar el archivo en la carpeta del repositorio clonado
- Seleccionar la opción "Importar" y elegir el archivo CSV con los datos de las aplicaciones
- Escribir el nombre `apps` para la tabla que se va a crear y seleccionar la opción "Columnas en la primera fila"
- Hacer clic en "Aceptar" y luego en "Escribir cambios"

## Uso

Para usar este proyecto, se puede acceder a la base de datos `apple_store.db` usando DB Browser for SQLite o cualquier otra herramienta que soporte SQLite. Allí, se pueden ejecutar consultas SQL para analizar los datos de las aplicaciones y obtener información de interés.

También, se puede usar el archivo `analisis.py` que se encuentra en la carpeta del repositorio, que contiene código en Python para realizar algunas consultas y visualizaciones usando Pandas y Matplotlib. Para ejecutar este archivo, se debe abrir una terminal en la carpeta del repositorio y usar el siguiente comando:

```bash
python analisis.py
```

Este comando mostrará algunos resultados y gráficos en la terminal o en una ventana emergente, según el caso.

## Pruebas

Para probar este proyecto, se puede usar el archivo `pruebas.py` que se encuentra en la carpeta del repositorio, que contiene código en Python para realizar algunas pruebas unitarias usando el módulo `unittest`. Estas pruebas verifican que las consultas SQL y las funciones de Python devuelvan los resultados esperados.

Para ejecutar este archivo, se debe abrir una terminal en la carpeta del repositorio y usar el siguiente comando:

```bash
python pruebas.py
```

Este comando mostrará el resultado de las pruebas en la terminal, indicando si se pasaron o no.

## Licencia

Este proyecto está bajo la licencia MIT - mira el archivo [LICENSE.md] para más detalles.

## Contribuciones

Las contribuciones a este proyecto son bienvenidas. Si quieres colaborar, por favor lee el archivo [CONTRIBUTING.md] para conocer las pautas y el código de conducta.

Origen: Conversación con Bing, 04-01-2024
(1) Cómo escribir un README increíble en tu Github - Alura. https://www.aluracursos.com/blog/como-escribir-un-readme-increible-en-tu-github.
(2) Una plantilla para hacer un buen README.md. Inspirado en el gist de .... https://gist.github.com/Villanuevand/6386899f70346d4580c723232524d35a.
(3) Inicio rápido para repositorios - Documentación de GitHub. https://docs.github.com/es/repositories/creating-and-managing-repositories/quickstart-for-repositories.
(4) undefined. https://github.com/camilafernanda/GlicoCare2/tree/main%29.
(5) undefined. https://github.com/camilafernanda/GlicoCare%29.
(6) undefined. https://gist.github.com/PurpleBooth/109311bb0361f32d87a2.
