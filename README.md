# myapp
<img width="409" height="723" alt="image" src="https://github.com/user-attachments/assets/e115a366-0e7b-4fd5-be76-67e78eeaaeec" />
<img width="407" height="705" alt="image" src="https://github.com/user-attachments/assets/9ebed10c-99e9-4233-a2ba-31130a525bca" />
<img width="410" height="702" alt="image" src="https://github.com/user-attachments/assets/36cbbce0-7627-4233-94b1-d12957153e9d" />
<img width="1229" height="762" alt="image" src="https://github.com/user-attachments/assets/e57936f1-1893-48e8-bbbd-722d2bc49f4b" />
<img width="1220" height="730" alt="image" src="https://github.com/user-attachments/assets/e29c45c1-200c-42d7-88ae-59b5a7719893" />
<img width="1221" height="730" alt="image" src="https://github.com/user-attachments/assets/7d040451-2ab4-41e5-b86f-3590bb6a1096" />

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

https://raw.githubusercontent.com/ikerserranoherrera/imagebes-para-flutter-6I-11-02-26/refs/heads/main/Act12bebidas.png
https://raw.githubusercontent.com/ikerserranoherrera/imagebes-para-flutter-6I-11-02-26/refs/heads/main/Act12burguer.png
https://raw.githubusercontent.com/ikerserranoherrera/imagebes-para-flutter-6I-11-02-26/refs/heads/main/Act12dwbcb.jpg
https://raw.githubusercontent.com/ikerserranoherrera/imagebes-para-flutter-6I-11-02-26/refs/heads/main/awuita%20de%20chica%20gamer.jpg
https://raw.githubusercontent.com/ikerserranoherrera/imagebes-para-flutter-6I-11-02-26/refs/heads/main/boblewesternuwu.png
https://raw.githubusercontent.com/ikerserranoherrera/imagebes-para-flutter-6I-11-02-26/refs/heads/main/burguer%20de%20pollo.PNG
https://raw.githubusercontent.com/ikerserranoherrera/imagebes-para-flutter-6I-11-02-26/refs/heads/main/caf%C3%A9.PNG
https://raw.githubusercontent.com/ikerserranoherrera/imagebes-para-flutter-6I-11-02-26/refs/heads/main/cheesefires.PNG
https://raw.githubusercontent.com/ikerserranoherrera/imagebes-para-flutter-6I-11-02-26/refs/heads/main/cookies.PNG
https://raw.githubusercontent.com/ikerserranoherrera/imagebes-para-flutter-6I-11-02-26/refs/heads/main/icecream.PNG
https://raw.githubusercontent.com/ikerserranoherrera/imagebes-para-flutter-6I-11-02-26/refs/heads/main/lowcarb.png
https://raw.githubusercontent.com/ikerserranoherrera/imagebes-para-flutter-6I-11-02-26/refs/heads/main/malteada.jpg
https://raw.githubusercontent.com/ikerserranoherrera/imagebes-para-flutter-6I-11-02-26/refs/heads/main/milkshake.PNG
https://raw.githubusercontent.com/ikerserranoherrera/imagebes-para-flutter-6I-11-02-26/refs/heads/main/onionrings.PNG
A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
