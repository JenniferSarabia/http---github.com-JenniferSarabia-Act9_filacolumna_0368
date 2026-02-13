import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(const AppUrbayFlow());

class AppUrbayFlow extends StatelessWidget {
  const AppUrbayFlow({super.key});

  @override
  Widget build(BuildContext context) {
    // Generate a harmonious color scheme from a single seed color
    final ColorScheme colorScheme = ColorScheme.fromSeed(
      seedColor: Colors.blueGrey,
      brightness: Brightness.light,
    );

    // Create a theme using the generated color scheme
    final ThemeData theme = ThemeData(
      useMaterial3: true,
      colorScheme: colorScheme,
      appBarTheme: AppBarTheme(
        backgroundColor: colorScheme.primary,
        foregroundColor: colorScheme.onPrimary,
        centerTitle: true,
      ),
    );

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: theme, // Apply the new theme to the whole app
      home: const UrbayFlowFilaColumnas(),
    );
  }
}

class UrbayFlowFilaColumnas extends StatelessWidget {
  const UrbayFlowFilaColumnas({super.key});

  @override
  Widget build(BuildContext context) {
    const double gap = 8.0;
    final borderRadius = BorderRadius.circular(12.0);
    final colorScheme = Theme.of(context).colorScheme;

    return Scaffold(
      appBar: AppBar(
        title: const Text('UrbayFlow Sarabia'),
        actions: [
          IconButton(
            icon: const Icon(Icons.inventory_2),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.person),
            onPressed: () {},
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(gap),
        child: Column(
          children: [
            // FILA 1
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: CustomContainer(
                      color: colorScheme.secondaryContainer,
                      borderRadius: borderRadius,
                      icon: CupertinoIcons.star,
                      iconColor: colorScheme.onSecondaryContainer,
                      text: 'Novedades',
                      textColor: colorScheme.onSecondaryContainer,
                    ),
                  ),
                  const SizedBox(width: gap),
                  Expanded(
                    child: CustomContainer(
                      color: colorScheme.primary,
                      borderRadius: borderRadius,
                      icon: CupertinoIcons.heart,
                      iconColor: colorScheme.onPrimary,
                      text: 'Más Vendidos',
                      textColor: colorScheme.onPrimary,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: gap),

            // FILA 2
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: CustomContainer(
                      color: colorScheme.tertiary,
                      borderRadius: borderRadius,
                      icon: CupertinoIcons.tag,
                      iconColor: colorScheme.onTertiary,
                      text: 'En Oferta',
                      textColor: colorScheme.onTertiary,
                    ),
                  ),
                  const SizedBox(width: gap),
                  Expanded(
                    child: CustomContainer(
                      color: colorScheme.secondary,
                      borderRadius: borderRadius,
                      icon: CupertinoIcons.person,
                      iconColor: colorScheme.onSecondary,
                      text: 'Ropa Casual',
                      textColor: colorScheme.onSecondary,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: gap),

            // FILA 3
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: CustomContainer(
                      color: colorScheme.surfaceVariant,
                      borderRadius: borderRadius,
                      icon: CupertinoIcons.ant,
                      iconColor: colorScheme.onSurfaceVariant,
                      text: 'Ropa Formal',
                      textColor: colorScheme.onSurfaceVariant,
                    ),
                  ),
                  const SizedBox(width: gap),
                  Expanded(
                    child: CustomContainer(
                      color: colorScheme.tertiaryContainer,
                      borderRadius: borderRadius,
                      icon: CupertinoIcons.bag,
                      iconColor: colorScheme.onTertiaryContainer,
                      text: 'Accesorios',
                      textColor: colorScheme.onTertiaryContainer,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// A reusable widget for the feature containers to avoid code repetition
class CustomContainer extends StatelessWidget {
  const CustomContainer({
    super.key,
    required this.color,
    required this.borderRadius,
    required this.icon,
    required this.iconColor,
    required this.text,
    required this.textColor,
  });

  final Color color;
  final BorderRadius borderRadius;
  final IconData icon;
  final Color iconColor;
  final String text;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: color,
        borderRadius: borderRadius,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, color: iconColor, size: 40),
          const SizedBox(height: 8.0),
          Text(
            text,
            style: TextStyle(
              color: textColor,
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }
}
