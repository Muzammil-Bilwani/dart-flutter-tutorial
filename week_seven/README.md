## Week 8 Building Flutter Apps - Flutter Fundamentals

- Introduction to Flutter and Flutter App Anatomy
- Creating a Flutter Hello World App - Basics with Text Widget
- Understanding Material Design Basics - Text and Widget Properties
- Formatting Our Code
- Little Material Design Presentation
- Flutter Scaffold Widget and Properties
- Flutter Gesture Detector Widget - Creating a Custom Button
- Flutter Bottom Navigator and Add a Tap

### Setup Flutter

#### Guide to install Flutter.

https://docs.flutter.dev/get-started/install

#### Requirements for PC for Windows

- Operating Systems: Windows 10 or later (64-bit), x86-64 based.
- Disk Space: 1.64 GB (does not include disk space for IDE/tools).
- Tools: Flutter depends on these tools being available in your environment.
  - Windows PowerShell 5.0 or newer (this is pre-installed with Windows 10)
  - Git for Windows 2.x, with the Use Git from the Windows Command Prompt option.
    - If Git for Windows is already installed, make sure you can run git commands from the command prompt or PowerShell.
- You need to install Android Studio as well for running Android
  https://docs.flutter.dev/get-started/install/windows#android-setup
- Also setup your VSCode for flutter
  https://docs.flutter.dev/get-started/editor

### Introduction to Flutter and Flutter App Anatomy

- Flutter is a mobile app SDK for building high-performance, high-fidelity, apps for iOS and Android, from a single codebase.
- Flutter is a new way to build high-performance, high-fidelity, mobile apps for iOS and Android.

### Creating a Flutter Hello World App - Basics with Text Widget

To get started with Flutter, we'll create a simple "Hello World" app that displays some text on the screen. First, we need to create a new Flutter project using the command line:

```bash
flutter create myapp
```

This will create a new Flutter project named "myapp". Now, open the main.dart file in your project and replace the existing code with the following code:

```dart
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Hello World'),
        ),
        body: Center(
          child: Text(
            'Hello, World!',
            style: TextStyle(fontSize: 24),
          ),
        ),
      ),
    );
  }
}
```

This code imports the necessary material package and creates a new MyApp widget that extends the StatelessWidget class. The build method of this widget returns a MaterialApp widget, which sets the title of the app and defines the home screen using a Scaffold widget.

Inside the Scaffold widget, we define an AppBar widget with the title "Hello World". The body of the Scaffold widget contains a Center widget, which centers the Text widget that displays the message "Hello, World!".

### Understanding Material Design Basics - Text and Widget Properties:

Material Design is a design language developed by Google that provides a set of guidelines and principles for creating beautiful and intuitive user interfaces. In Flutter, we can use Material Design widgets to implement these guidelines in our apps.

Text and Widget Properties are essential concepts in Material Design that allow us to customize the appearance and behavior of our app's widgets. Some of the commonly used text and widget properties in Flutter include:

- Text properties: fontSize, fontWeight, color, letterSpacing, fontStyle, fontFamily, etc.
- Widget properties: backgroundColor, foregroundColor, padding, margin, border, borderRadius, elevation, etc.
  Here's an example code snippet that demonstrates how to use these properties to customize a Text widget:

```dart
Text(
  'Hello, World!',
  style: TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.bold,
    color: Colors.blue,
    letterSpacing: 2,
    fontStyle: FontStyle.italic,
    fontFamily: 'Roboto',
  ),
)
```

This code creates a new Text widget that displays the message "Hello, World!" with a font size of 24, bold font weight, blue color, 2 letter spacing, italic font style, and Roboto font family.

### Formatting Our Code

Code formatting is an important aspect of software development that helps us write clean, readable, and maintainable code. In Flutter, we can use the Dart formatter to automatically format our code according to the recommended style guidelines.

To format your Flutter code, simply run the following command in your project directory:

```bash
flutter format .
```

Flutter provides a built-in code formatter that formats our code according to the Dart style guide. To format our code, we can either use the keyboard shortcut Ctrl + Alt + L (Windows/Linux) or Cmd + Option + L (macOS) or use the Format Code option in the Edit menu.

### Little Material Design Presentation

As mentioned earlier, Material Design is a design language developed by Google that provides a set of guidelines and principles for creating beautiful and intuitive user interfaces. Here are some of the key features of Material Design:

- Material surfaces: Material Design uses surfaces such as cards, sheets, and menus to organize and display content.
- Typography: Material Design uses typography to create a visual hierarchy and emphasize important content.
- Color: Material Design uses color to convey meaning and create a visual identity for the app.
- Motion: Material Design uses motion to provide feedback and convey transitions between screens or states in the app.
- Icons: Material Design uses icons to provide visual cues and help users understand the app's functionality.
- Accessibility: Material Design emphasizes accessibility by providing guidance on how to make apps usable by people with disabilities.

When designing your Flutter app, it's important to follow Material Design principles to provide a consistent and intuitive user experience.

### Flutter Scaffold Widget and Properties:

The Scaffold widget is a key component of Material Design in Flutter. It provides a basic framework for creating app screens and includes several properties to customize the app's layout and behavior.

Here are some of the commonly used properties of the Scaffold widget:

- appBar: A widget that provides a standard app bar at the top of the screen.
- body: The main content of the screen, typically a widget such as a ListView or a Column.
- floatingActionButton: A widget that provides a floating action button at the bottom right corner of the screen.
- drawer: A widget that provides a side drawer menu.
- bottomNavigationBar: A widget that provides a bottom navigation bar.

Here's an example code snippet that demonstrates how to use the Scaffold widget and its properties:

```dart
Scaffold(
  appBar: AppBar(
    title: Text('My App'),
  ),
  body: Center(
    child: Text('Welcome to my app!'),
  ),
  floatingActionButton: FloatingActionButton(
    onPressed: () {
      // Add your code here
    },
    child: Icon(Icons.add),
  ),
  drawer: Drawer(
    child: ListView(
      padding: EdgeInsets.zero,
      children: <Widget>[
        DrawerHeader(
          child: Text('Menu'),
          decoration: BoxDecoration(
            color: Colors.blue,
          ),
        ),
        ListTile(
          title: Text('Item 1'),
          onTap: () {
            // Add your code here
          },
        ),
        ListTile(
          title: Text('Item 2'),
          onTap: () {
            // Add your code here
          },
        ),
      ],
    ),
  ),
  bottomNavigationBar: BottomNavigationBar(
    items: [
      BottomNavigationBarItem(
        icon: Icon(Icons.home),
        label: 'Home',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.search),
        label: 'Search',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.person),
        label: 'Profile',
      ),
    ],
    selectedItemColor: Colors.blue,
    onTap: (index) {
      // Add your code here
    },
  ),
)
```

This code creates a new Scaffold widget with an AppBar widget that displays the app's title, a body that displays a welcome message, a floating action button that displays an add icon, a drawer that displays a menu with two items, and a bottom navigation bar with three items. The properties of each widget are defined using various Text and Widget Properties, which can be customized as needed.

### Creating a Custom Button Using Gesture Detector

Flutter's Gesture Detector widget provides support for handling gestures, such as taps, swipes, and drags. Here's an example of how you can use Gesture Detector to create a custom button:

```dart
import 'package:flutter/material.dart';

class CustomButton extends StatefulWidget {
  final String buttonText;
  final VoidCallback onPressed;
  final Color buttonColor;
  final Color textColor;

  CustomButton({
    Key key,
    @required this.buttonText,
    @required this.onPressed,
    this.buttonColor = Colors.blue,
    this.textColor = Colors.white,
  }) : super(key: key);

  @override
  _CustomButtonState createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  Color _buttonColor;
  Color _textColor;

  @override
  void initState() {
    _buttonColor = widget.buttonColor;
    _textColor = widget.textColor;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: (_) {
        setState(() {
          _buttonColor = Colors.blue[900];
          _textColor = Colors.white;
        });
      },
      onTapUp: (_) {
        setState(() {
          _buttonColor = widget.buttonColor;
          _textColor = widget.textColor;
        });
      },
      onTapCancel: () {
        setState(() {
          _buttonColor = widget.buttonColor;
          _textColor = widget.textColor;
        });
      },
      onTap: widget.onPressed,
      child: Container(
        decoration: BoxDecoration(
          color: _buttonColor,
          borderRadius: BorderRadius.circular(5.0),
        ),
        padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
        child: Text(
          widget.buttonText,
          style: TextStyle(
            color: _textColor,
            fontWeight: FontWeight.bold,
            fontSize: 16.0,
          ),
        ),
      ),
    );
  }
}
```

Here's how you can use the CustomButton widget:

```dart
  CustomButton(
    buttonText: 'Sign in',
    onPressed: () {
      // Do something when the button is pressed
    },
    buttonColor: Colors.blue,
    textColor: Colors.white,
  )
```

### Adding a Tap to a Bottom Navigator

Flutter's Bottom Navigation Bar widget provides a simple way to create a bottom navigation bar in your app. Here's an example of how you can add a tap to a bottom navigator:

```dart
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;
  final List<Widget> _pages = [
    Page1(),
    Page2(),
    Page3(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My App'),
      ),
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Page 1',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Page 2',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Page 3',
          ),
        ],
        ),
      );
    }
  }
```

In this example, we have created a `MyHomePage` widget with a bottom navigation bar that has three items. The `currentIndex` property is used to keep track of the currently selected item. The `onTap` callback is called when an item is tapped and it updates the `_selectedIndex` variable, which triggers a rebuild of the widget.

The `items` property of the `BottomNavigationBar` widget is a list of `BottomNavigationBarItem` widgets, each representing an item in the navigation bar. The `icon` property specifies the icon for the item, and the `label` property specifies the text label.

When an item is tapped, the `_onItemTapped` function is called with the index of the selected item as an argument. This function updates the `_selectedIndex` variable and triggers a rebuild of the widget. The `_pages` list contains the pages that are displayed in the body of the widget, and the selected page is displayed based on the value of `_selectedIndex`.

That's it! You can customize the icons and labels of the navigation bar items to fit your app's needs.

### App - Build a Quotes App - Part 1

#### Example Designs

<img src="https://cdn.dribbble.com/users/839742/screenshots/4581855/dribbble_quote_generator.png"/>

<br/>
<br/>
<br/>

<img src="https://cdn.dribbble.com/users/5576/screenshots/3526312/media/167f21bdbc3290e484081baef7229b0b.png?compress=1&resize=400x300" width="100%"/>
