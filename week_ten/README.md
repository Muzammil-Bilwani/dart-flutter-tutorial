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

### Class Project

#### Mortgage Calculator

<img src="https://cdn.dribbble.com/users/593304/screenshots/9933822/media/dae3d949ab01dbc188bb8434bc0cd02d.png?compress=1&resize=1600x1200&vertical=center" />

Colors:

- #c7a7f3
- #f1f3fa
- #090817
- #9d72e9
- #9b9eae
- #734d8a
- #413b5c

Fonts:

- Poppins

## API Integration in Flutter

- Whats is an API?
  API stands for Application Programming Interface. It is a set of rules that allow programs to talk to each other. The developer creates the API on the server and allows the client to talk to it.

- What is REST API?
  REST determines how the API looks like. It stands for “Representational State Transfer”. It is a set of rules that developers follow when they create their API. One of these rules states that you should be able to get a piece of data (called a resource) when you link to a specific URL.

- What is JSON?
  JSON stands for JavaScript Object Notation. It is a way to store information in an organized, easy-to-access manner. In a nutshell, it gives us a human-readable collection of data that we can access in a really logical manner. It can be used with modern programming languages. It is the most common data format used for asynchronous browser/server communication.

- What is an API call?
  An API call is the process that takes place after the API is set up and ready to go. It is the way a client gets the information from the API. It is basically a request for information from a web server.

- What is an API endpoint?
  An endpoint is one end of a communication channel. When an API interacts with another system, the touchpoints of this communication are considered endpoints. For APIs, an endpoint can include a URL of a server or service. Each endpoint is the location from which APIs can access the resources they need to carry out their function.

- What is an API key?
  An API key is a unique identifier that you generate using the Google Cloud Console. API keys are used to track and control how the API is being used, for example to prevent malicious use or abuse of the API. The API key is used to track API requests associated with your project for quota and billing.

- What is an API request?
  An API request is a call to the API asking for specific information to be delivered.

- What is an API response?
  An API response is the answer the API sends back to the client.

- What is an API client?
  An API client is a set of tools that allow you to make API calls. It can be a website, a mobile app, a console app, or anything that can consume an API.

- What is an API server?
  An API server is a server that is used to provide data to other applications. It is a set of routines, protocols, and tools for building software applications. It determines how the API is structured and how it should be called.

- What is an API wrapper?
  An API wrapper is an API client that are commonly used to wrap the API into easy to use functions by doing the API calls itself.

- What is an API proxy?
  An API proxy is a server that acts as a middleman between the client and the API server. It can be used to add extra security to the API or to cache the responses.

- What is an API gateway?
  An API gateway is a server that is the single entry point into the system. It is similar to the proxy but it has extra functionalities like authentication, rate limiting, caching, etc.

### Flutter HTTP Package

- The `http` package is used to make HTTP requests in Flutter.

```dart
// Example
import 'package:http/http.dart' as http;
```

### Making a GET Request

- The `get()` method of the `http` package is used to make a GET request.

```dart
// Example
http.get(Uri.parse('https://jsonplaceholder.typicode.com/todos/1'));
```

### Handling the Response

- The `get()` method of the `http` package returns a `Future` object that contains a `Response` object.

```dart
// Example
http.get(Uri.parse('https://jsonplaceholder.typicode.com/todos/1'));
```

- The `body` property of the `Response` class is used to get the body of the response.

```dart
// Example
http.get(Uri.parse('https://jsonplaceholder.typicode.com/todos/1')).then((response) {
  print(response.body);
});
```

### Parsing JSON

- The `jsonDecode()` method of the `dart:convert` package is used to parse JSON.

```dart
// Example
import 'dart:convert';

http.get(Uri.parse('https://jsonplaceholder.typicode.com/todos/1')).then((response) {
  print(jsonDecode(response.body));
});
```

## What is Future?

- A `Future` is used to represent a potential value, or error, that will be available at some time in the future.

### What is FutureBuilder?

- A `FutureBuilder` is a widget that is used to build itself based on the latest snapshot of interaction with a `Future`.

### What is Async and Await?

- The `async` and `await` keywords are used to work with asynchronous code in Dart.

Example:

```dart
// Example
Future<void> main() async {
  print('Fetching user order...');
  print(await createOrderMessage());
}

Future<String> createOrderMessage() async {
  var order = await fetchUserOrder();
  return 'Your order is: $order';
}

Future<String> fetchUserOrder() =>
    // Imagine that this function is
    // more complex and slow.
    Future.delayed(
      const Duration(seconds: 2),
      () => 'Large Latte',
    );
```
