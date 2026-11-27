// Importamos Flutter para poder crear la aplicación:
import 'package:flutter/material.dart';

// Importamos todas las pantallas desde un único archivo:
import 'screens/screens.dart';

// Función principal desde donde comienza la aplicación:
void main() {
  runApp(const PixelStudioApp());
}

// Clase principal de nuestra aplicación:
class PixelStudioApp extends StatelessWidget {
  const PixelStudioApp({super.key});

  @override
  Widget build(BuildContext context) {
    // Configuramos el nombre, el tema y las rutas de la aplicación:
    return MaterialApp(
      // Ocultamos la etiqueta de debug:
      debugShowCheckedModeBanner: false,

      title: 'Pixel Studio',

      // Definimos los colores generales de la aplicación:
      theme: ThemeData(
        useMaterial3: true,
        scaffoldBackgroundColor: const Color(0xFFF4F2FA),
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF6558D3),
          primary: const Color(0xFF6558D3),
          secondary: const Color(0xFF21B8A5),
        ),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFF171A2E),
          foregroundColor: Colors.white,
          centerTitle: false,
          elevation: 0,
        ),
      ),

      // Indicamos que la primera pantalla será la de inicio:
      initialRoute: AppRoutes.home,

      // Registramos todas las rutas para navegar entre pantallas:
      routes: AppRoutes.routes,
    );
  }
}