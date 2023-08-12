## Final Week - Animation in Flutter

### Basics of Flutter Animations – Tweens and Animation Controllers

Animations are an essential part of making the UI of a mobile application feel natural and smooth to the user. Smooth transitions and interactive elements make an app pleasant to use. On the other hand, badly made animations can make the app look clumsy or worse, break the application altogether. For this reason, learning the fundamentals of animations in any framework is an essential step towards delivering a superior user experience.

Flutter animations are a powerful aspect of the framework. The Flutter Gallery app itself displays some amazing app demos made with Flutter.

In this article, we will look at the fundamentals of creating a flutter animation. The great thing about going through these fundamentals is that the structure stays the same even across most complex animations and learning this structure will give us a pathway to creating amazing user interfaces.

### Creating a simple Flutter animation

<img src="https://up-blog-prod.s3.amazonaws.com/ezgif.com-video-to-gif-5-gqc6k.gif">

#### Basic Code setup

Create a project
Let’s delete the code from main.dart and paste our starter code shown below:

```dart
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
 // This widget is the root of your application.
 @override
 Widget build(BuildContext context) {
   return MaterialApp(
     title: 'Flutter Demo',
     theme: ThemeData(
       // This is the theme of your application.
       //
       // Try running your application with "flutter run". You'll see the
       // application has a blue toolbar. Then, without quitting the app, try
       // changing the primarySwatch below to Colors.green and then invoke
       // "hot reload" (press "r" in the console where you ran "flutter run",
       // or simply save your changes to "hot reload" in a Flutter IDE).
       // Notice that the counter didn't reset back to zero; the application
       // is not restarted.
       primarySwatch: Colors.blue,
     ),
     home: MyHomePage(),
   );
 }
}

class MyHomePage extends StatefulWidget {
 @override
 _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
 @override
 Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       title: Text("Animation Demo"),
     ),
   );
 }
}
```

#### Setting up AnimationControllers and Animations

We need to define our animations and controller to control the animations.

Before we do this, we need to add a mixin to our class for vsync for the AnimationController.

```dart
class _MyHomePageState extends State<MyHomePage> with
SingleTickerProviderStateMixin {
```

This mixin provides ‘ticks’ for the controller to change values over time.

If you are unfamiliar with mixins, check this [explainer article](https://medium.com/flutter-community/dart-what-are-mixins-3a72344011f3).

Finally, we set up our animation controller and animations as follows:

```dart
AnimationController controller;
Animation colorAnimation;
Animation sizeAnimation;

@override
void initState() {
 super.initState();
 controller =  AnimationController(vsync: this, duration: Duration(seconds: 2));
 colorAnimation = ColorTween(begin: Colors.blue, end: Colors.yellow).animate(controller);
 sizeAnimation = Tween<double>(begin: 100.0, end: 200.0).animate(controller);
}
```

initState() is the first function that runs when building a widget. Here, we initialise our variables.

For the controller, we pass in the vsync parameter, which is given by the SingleTickerProviderStateMixinwe added to the State class. We have also set the duration of the animation to 2 seconds.

Next, for this animation, we will be using Tweens we discussed earlier.

First, let’s create a Tween. For color, this is:

```dart
ColorTween(begin: Colors.blue, end: Colors.yellow)

```

This creates a tween which starts from blue and ends in yellow and will give us all colors in between. To create an animation out of it, we use the animate() method on it, passing in our AnimationController. We will do this for sizeAnimation animation as well, where we start with a size of 100.0 and end with 200.0.

#### Building the box

To create a box, we can use the Container() widget by setting height, width and color.

```dart
@override
Widget build(BuildContext context) {
 return Scaffold(
   appBar: AppBar(
     title: Text("Animation Demo"),
   ),
   body: Center(
     child: Container(
       height: sizeAnimation.value,
       width: sizeAnimation.value,
       color: colorAnimation.value,
     ),
   ),
 );
}
```

#### Starting the animation

```dart
// In initState
controller.addListener(() {
 setState(() {});
});
```

#### Adding curves for a better look

```dart
colorAnimation = ColorTween(begin: Colors.blue, end: Colors.yellow)
      .animate(CurvedAnimation(parent: controller, curve: Curves.bounceOut));
```

### Libraries for Flutter Animations

- https://pub.dev/packages/animations
- https://pub.dev/packages/page_transition

### More Read

- https://docs.flutter.dev/ui/animations
- https://flexiple.com/app/basics-of-flutter-animations/
