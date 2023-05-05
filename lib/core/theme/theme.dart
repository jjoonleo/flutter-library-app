import 'package:flutter/material.dart';
import 'package:material_color_utilities/material_color_utilities.dart';

@immutable
class LibraryTheme extends ThemeExtension<LibraryTheme> {
  const LibraryTheme({
    this.primaryColor = const Color(0xff6750A4),
  });

  final Color primaryColor;

  ThemeData toThemeData(ColorScheme? colorScheme) {
    colorScheme = colorScheme ?? _scheme().toColorScheme(Brightness.dark);
    return _base(colorScheme).copyWith(brightness: colorScheme.brightness);
  }

  ThemeData _base(ColorScheme colorScheme) {
    return ThemeData(
      useMaterial3: true,
      extensions: [this],
      colorScheme: colorScheme,
      primaryColor: colorScheme.primary,
      primaryColorLight:
          Color.alphaBlend(Colors.white.withAlpha(0x59), colorScheme.primary),
      primaryColorDark:
          Color.alphaBlend(Colors.black.withAlpha(0x72), colorScheme.primary),
      scaffoldBackgroundColor: colorScheme.background,
      appBarTheme: AppBarTheme(
        backgroundColor: colorScheme.background,
        toolbarHeight: 50,
        elevation: 0,
      ),
      fontFamily: "NotoSansKR",
      textTheme: TextTheme(
          bodySmall: TextStyle(
            color: colorScheme.primary,
            fontSize: 11,
          ),
          bodyMedium: TextStyle(
            color: colorScheme.onBackground,
            fontSize: 17,
          ),
          titleMedium: TextStyle(
            color: colorScheme.onBackground,
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
          headlineLarge: TextStyle(
              fontSize: 42,
              fontWeight: FontWeight.bold,
              color: colorScheme.onBackground,
              letterSpacing: 5,
          )
          ),
    );
  }

  Scheme _scheme() {
    final base = CorePalette.of(primaryColor.value);
    final primary = base.primary;
    return Scheme(
      primary: primary.get(40),
      onPrimary: primary.get(100),
      primaryContainer: primary.get(90),
      onPrimaryContainer: primary.get(10),
      secondary: base.secondary.get(40),
      onSecondary: base.secondary.get(100),
      secondaryContainer: base.secondary.get(90),
      onSecondaryContainer: base.secondary.get(10),
      tertiary: base.tertiary.get(40),
      onTertiary: base.tertiary.get(100),
      tertiaryContainer: base.tertiary.get(90),
      onTertiaryContainer: base.tertiary.get(100),
      error: base.error.get(40),
      onError: base.error.get(10),
      errorContainer: base.error.get(90),
      onErrorContainer: base.error.get(10),
      background: base.neutral.get(100),
      onBackground: base.neutral.get(10),
      surface: base.neutral.get(99),
      onSurface: base.neutral.get(20),
      surfaceVariant: base.neutralVariant.get(50),
      onSurfaceVariant: base.neutralVariant.get(80),
      shadow: base.neutral.get(0),
      scrim: base.neutral.get(0),
      inverseSurface: base.neutral.get(20),
      inverseOnSurface: base.neutral.get(95),
      inversePrimary: primary.get(80),
      outline: base.neutral.get(50),
      outlineVariant: base.neutral.get(50),
    );
  }

  @override
  ThemeExtension<LibraryTheme> copyWith({Color? primaryColor}) =>
      LibraryTheme(primaryColor: primaryColor ?? this.primaryColor);

  @override
  ThemeExtension<LibraryTheme> lerp(
      covariant ThemeExtension<LibraryTheme>? other, double t) {
    if (other is! LibraryTheme) return this;
    return LibraryTheme(
        primaryColor: Color.lerp(primaryColor, other.primaryColor, t)!);
  }
}

extension on Scheme {
  ColorScheme toColorScheme(Brightness brightness) {
    return ColorScheme(
        brightness: brightness,
        primary: Color(primary),
        onPrimary: Color(onPrimary),
        primaryContainer: Color(primaryContainer),
        onPrimaryContainer: Color(onPrimaryContainer),
        secondary: Color(secondary),
        onSecondary: Color(onSecondary),
        error: Color(error),
        onError: Color(onError),
        background: Color(background),
        onBackground: Color(onBackground),
        surface: Color(surface),
        onSurface: Color(onSurface));
  }
}
