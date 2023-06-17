## Understanding Themes in Flutter

- Introduction to UI and UX
- What's Material Design?
- Themes in Flutter
- Exploring ThemeData Class - App Brightness
- Theming Headlines and Body1 Text
- Theming - Over-Writing Theme Properties
- Theming - Refactoring our TextTheme Further
- Theming - Adding Custom Fonts to Our Project
- Theming - Applying FontFamily to All TextTheme Properties
- Material Design - Material.io Overview
- Material Design - Understanding Color Themes
- Material Design - Typography and Iconography

### Introduction to UI and UX

- UI - User Interface
- UX - User Experience

#### UI Design

- UI Design is the process of designing the presentation of a website or app.

#### UX Design

- UX Design is the process of designing the experience of a website or app.

#### Principles for Good UI Design

<img src="https://raw.githubusercontent.com/Muzammil-Bilwani/dart-flutter-tutorial/main/week_ten/images/deign_priciple.webp" />

Reference Links:
https://www.toptal.com/designers/ui/principles-of-design

### What's Material Design?

- Material Design is a design language developed by Google in 2014.
- Material Design is a design system that helps teams build high-quality digital experiences for Android, iOS, Flutter, and the web.

### Themes in Flutter

- A `Theme` is a collection of design elements that are used to create a consistent user experience.

### Exploring ThemeData Class - App Brightness

- The `ThemeData` class is used to define the theme of an app.

```dart
// Example
ThemeData(
  brightness: Brightness.light,
  primaryColor: Colors.blue,
  accentColor: Colors.red,
  fontFamily: 'Montserrat',
  textTheme: TextTheme(
    headline1: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
    headline6: TextStyle(fontSize: 36.0, fontStyle: FontStyle.italic),
    bodyText1: TextStyle(fontSize: 14.0, fontFamily: 'Hind'),
    bodyText2: TextStyle(fontSize: 14.0, fontFamily: 'Hind'),
  ),
);
```

### Theming Headlines and Body1 Text

- The `headline1` property of the `textTheme` property of the `ThemeData` class is used to define the style of the `headline1` text.

```dart
// Example
ThemeData(
  textTheme: TextTheme(
    headline1: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
  ),
);
```

- The `bodyText1` property of the `textTheme` property of the `ThemeData` class is used to define the style of the `bodyText1` text.

```dart
// Example
ThemeData(
  textTheme: TextTheme(
    bodyText1: TextStyle(fontSize: 14.0, fontFamily: 'Hind'),
  ),
);
```

### Theming - Over-Writing Theme Properties

- The `copyWith()` method of the `ThemeData` class is used to create a new `ThemeData` object by copying the properties of an existing `ThemeData` object.

```dart
// Example
ThemeData(
  brightness: Brightness.light,
  primaryColor: Colors.blue,
  accentColor: Colors.red,
  fontFamily: 'Montserrat',
  textTheme: TextTheme(
    headline1: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
    headline6: TextStyle(fontSize: 36.0, fontStyle: FontStyle.italic),
    bodyText1: TextStyle(fontSize: 14.0, fontFamily: 'Hind'),
    bodyText2: TextStyle(fontSize: 14.0, fontFamily: 'Hind'),
  ),
).copyWith(
  brightness: Brightness.dark,
  primaryColor: Colors.purple,
  accentColor: Colors.orange,
);
```

### Theming - Refactoring our TextTheme Further

- The `headline6` property of the `textTheme` property of the `ThemeData` class is used to define the style of the `headline6` text.

```dart
// Example
ThemeData(
  textTheme: TextTheme(
    headline6: TextStyle(fontSize: 36.0, fontStyle: FontStyle.italic),
  ),
);
```

- The `bodyText2` property of the `textTheme` property of the `ThemeData` class is used to define the style of the `bodyText2` text.

```dart
// Example
ThemeData(
  textTheme: TextTheme(
    bodyText2: TextStyle(fontSize: 14.0, fontFamily: 'Hind'),
  ),
);
```

### Theming - Adding Custom Fonts to Our Project

- The `pubspec.yaml` file is used to add custom fonts to a Flutter project.

```yaml
# Example
flutter:
  fonts:
    - family: Montserrat
      fonts:
        - asset: assets/fonts/Montserrat-Regular.ttf
        - asset: assets/fonts/Montserrat-Bold.ttf
          weight: 700
    - family: Hind
      fonts:
        - asset: assets/fonts/Hind-Regular.ttf
        - asset: assets/fonts/Hind-Bold.ttf
          weight: 700
```

### Theming - Applying FontFamily to All TextTheme Properties

- The `fontFamily` property of the `textTheme` property of the `ThemeData` class is used to define the font family of all the text styles.

```dart
// Example
ThemeData(
  textTheme: TextTheme(
    fontFamily: 'Montserrat',
  ),
);
```

### Material Design - Material.io Overview

- Material.io is a website that provides guidelines and resources for Material Design.

### Material Design - Understanding Color Themes

- The `primaryColor` property of the `ThemeData` class is used to define the primary color of the app.

```dart
// Example
ThemeData(
  primaryColor: Colors.blue,
);
```

- The `accentColor` property of the `ThemeData` class is used to define the accent color of the app.

```dart
// Example
ThemeData(
  accentColor: Colors.red,
);
```

### Material Design - Typography and Iconography

- The `headline1` property of the `textTheme` property of the `ThemeData` class is used to define the style of the `headline1` text.

```dart
// Example
ThemeData(
  textTheme: TextTheme(
    headline1: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
  ),
);
```

- The `headline6` property of the `textTheme` property of the `ThemeData` class is used to define the style of the `headline6` text.

```dart
// Example
ThemeData(
  textTheme: TextTheme(
    headline6: TextStyle(fontSize: 36.0, fontStyle: FontStyle.italic),
  ),
);
```

- The `bodyText1` property of the `textTheme` property of the `ThemeData` class is used to define the style of the `bodyText1` text.

```dart
// Example
ThemeData(
  textTheme: TextTheme(
    bodyText1: TextStyle(fontSize: 14.0, fontFamily: 'Hind'),
  ),
);
```

Useful Links:

- https://docs.flutter.dev/cookbook/design/themes
- https://material.io/design
- https://material.io/design/color/the-color-system.html#color-theme-creation
- https://medium.com/dlt-labs-publication/using-themes-in-flutter-86b34b1f9d8a

### Extra

UX design Case studies:
https://growth.design/case-studies
