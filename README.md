# myapp

A new Flutter project.

## Getting Started
Carls Jr - Iker Serrano Project
Este proyecto es una aplicación de catálogo gastronómico desarrollada con Flutter y Dart. Presenta una interfaz elegante en modo oscuro con la identidad visual de Carl's Jr., organizada en una cuadrícula dinámica de 2 columnas y 7 filas.

🎨 Especificaciones de Diseño
Color Primario: #FFC72C (Amarillo Carl's Jr.)

Fondo: #000000 (Negro Puro)

Tipografía: Pesos pesados (w900) para encabezados.

Estructura: GridView de 2x7 con tarjetas personalizadas.

🚀 Instrucciones de Recreación (Paso a Paso)
1. Configuración del Entorno
Asegúrate de tener Flutter instalado en tu sistema. Crea un nuevo proyecto:

Bash
flutter create carls_jr_serrano
cd carls_jr_serrano
2. Estructura de Datos
El proyecto utiliza tres listas principales para gestionar el contenido. Asegúrate de que las tres tengan la misma longitud (14 elementos):

nombresProductos: Etiquetas de texto para cada item.

imagenesLinks: URLs directas de las imágenes (GitHub Raw recomendado).

ratings: Valores numéricos de calificación (0.0 a 5.0).

3. Implementación del Código (main.dart)
Sustituye el contenido de lib/main.dart con el código proporcionado que incluye:

AppBar: Personalizado con el color #FFC72C y centrado.

GridView.builder: Configurado con crossAxisCount: 2 y childAspectRatio: 0.9.

Stack & Positioned: Para superponer el nombre y las estrellas sobre las imágenes.

LinearGradient: Un degradado negro en la base de las imágenes para garantizar la legibilidad del texto.

4. Manejo de Errores y Carga
El código implementa:

loadingBuilder: Muestra un CircularProgressIndicator mientras la imagen descarga.

errorBuilder: Muestra un icono de Icons.fastfood si el link de la imagen falla.

withAlpha: Configuración de sombras para evitar errores de compatibilidad en versiones recientes de Flutter.

🛠️ Tecnologías Utilizadas
Lenguaje: Dart

Framework: Flutter

Hosting de Imágenes: GitHub Repositories
This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
