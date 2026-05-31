# XSLT Practice

![XSLT](https://img.shields.io/badge/XSLT-1.0-e65100?style=for-the-badge&logo=data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZpZXdCb3g9IjAgMCAyNCAyNCI+PHBhdGggZmlsbD0id2hpdGUiIGQ9Ik0xMiAyQzYuNDggMiAyIDYuNDggMiAxMnM0LjQ4IDEwIDEwIDEwIDEwLTQuNDggMTAtMTBTMTcuNTIgMiAxMiAyem0wIDE4Yy00LjQxIDAtOC0zLjU5LTgtOHMzLjU5LTggOC04IDggMy41OSA4IDgtMy41OSA4LTggOHoiLz48L3N2Zz4=)&nbsp;![XML](https://img.shields.io/badge/XML-Dataset-0277bd?style=for-the-badge&logo=xml)&nbsp;![Saxon](https://img.shields.io/badge/Saxon--HE-Processor-43a047?style=for-the-badge)&nbsp;![HTML Output](https://img.shields.io/badge/HTML-Output-e91e63?style=for-the-badge&logo=html5)&nbsp;![Lenguajes de Marca](https://img.shields.io/badge/Lenguajes_de_Marca-LMSGI-c62828?style=for-the-badge)

> **XSLT Practice** es una colección de transformaciones XSLT sobre ficheros XML, desarrollada como práctica de la asignatura **Lenguajes de Marca y Sistemas de Gestión de Información** del Grado Superior de DAW — IES Augustóbriga.

---

## 📋 Descripción

Este repositorio contiene ejercicios prácticos de **XSLT 1.0** organizados en tres bloques temáticos, cada uno con su propio dataset XML y múltiples hojas de transformación. Las transformaciones trabajan con:

- **`xsl:template`** y **`xsl:apply-templates`** para estructurar la salida.
- **`xsl:for-each`** y **`xsl:sort`** para iterar y ordenar nodos.
- **`xsl:if`** y **`xsl:choose`** para lógica condicional.
- **`xsl:value-of`** y **`xsl:attribute`** para extraer valores y construir atributos.
- **Generación de HTML** enriquecido con tablas, listas y estilos CSS inline.

---

## 🏗️ Estructura del Proyecto

```txt
XSLT_Practice/
├── Ejercicio_1XSLT/
│   ├── ejercicio1.xml             # Dataset XML del ejercicio 1
│   ├── transformacion1.xsl        # Transformación 1
│   ├── transformacion2.xsl        # Transformación 2
│   ├── transformacion3.xsl        # Transformación 3
│   ├── transformacion4.xsl        # Transformación 4
│   ├── transformacion5.xsl        # Transformación 5
│   └── Ejercicio 1 transformación XSLT.pdf
├── Ejercicio_2XSLT/
│   ├── ejercicio2.xml             # Dataset XML del ejercicio 2
│   ├── transformacion1.xsl        # Transformación 1
│   ├── transformacion2.xsl        # Transformación 2
│   ├── transformacion3.xsl        # Transformación 3
│   ├── transformacion4.xsl        # Transformación 4
│   └── Ejercicio 2 transformación XSLT.pdf
└── Tabla_Liga/
    └── ...                        # Transformación de tabla de liga de fútbol
```

---

## ⚙️ Ejecución

Clona el repositorio:
```txt
git clone https://github.com/sorgazb/XSLT_Practice.git
cd XSLT_Practice
```

### Opción 1 — Saxon HE (Java, recomendado)

```txt
java -cp saxon-he.jar net.sf.saxon.Transform -s:Ejercicio_1XSLT/ejercicio1.xml -xsl:Ejercicio_1XSLT/transformacion1.xsl -o:salida.html
```

### Opción 2 — Navegador (enlace directo en el XML)

Añade en la cabecera del archivo `.xml`:

```xml
<?xml-stylesheet type="text/xsl" href="transformacion1.xsl"?>
```

Y abre el `.xml` directamente en el navegador.

### Opción 3 — Visual Studio Code

Instala la extensión **XSLT/XPath for Visual Studio Code** y usa el comando `XSLT: Transform XML`.

---

## 🤝 Contribución

Haz fork del repositorio.

Crea una rama de trabajo:

```txt
git checkout -b feature/nueva-transformacion
```

Realiza tus cambios y haz commit.

Abre un Pull Request describiendo tus mejoras.

---

<p align="center">Práctica LMSGI &ndash; GS DAW &ndash; IES Augustóbriga &ndash; Sergio Orgaz Bravo</p>
