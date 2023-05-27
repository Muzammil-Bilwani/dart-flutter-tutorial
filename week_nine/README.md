## Flutter Intermediate Concepts - Navigation, Listviews - Building a Movie App

### 1. Navigation

#### 1.1. Navigation Basics

- Navigation is the ability to move between different screens in an app.
- In Flutter, we can use the `Navigator` widget to manage the stack of routes.
- The `Navigator` widget manages a stack of `Route` objects and provides methods for managing the stack, like `Navigator.push` and `Navigator.pop`.
- A `Route` is an abstraction for a "screen" or "page" of an app, and a `Navigator` is a widget that manages routes.

#### 1.2. Navigation with Named Routes

- We can use named routes to navigate to a specific screen in our app.
- To use named routes, we need to do the following:
  - Define the routes in the `MaterialApp` widget.
  - Use the `Navigator.pushNamed()` method to navigate to a specific route.
  - Use the `Navigator.pop()` method to return to the previous route.
- We can also pass data to a named route using the `arguments` parameter of the `Navigator.pushNamed()` method.

#### 1.3. Navigation with Arguments

- We can pass data to a named route using the `arguments` parameter of the `Navigator.pushNamed()` method.
- The `arguments` parameter can be any type of object.
- We can also pass data back to the previous screen using the `Navigator.pop()` method.

#### 1.4. Navigation with Results

- We can pass data back to the previous screen using the `Navigator.pop()` method.
- The `Navigator.pop()` method returns a `Future` object that can be used to get the result of the previous screen.

### Module 1: Introduction to Navigation in Flutter

- Understanding Flutter Navigation concepts
- Using Navigator class for screen navigation
- Navigating between screens using routes
- Passing data between screens

Code Example:

```dart
// Define a route in the main.dart file
MaterialApp(
  initialRoute: '/',
  routes: {
    '/': (context) => HomeScreen(),
    '/details': (context) => DetailsScreen(),
  },
)

// Navigate to a new screen
Navigator.pushNamed(context, '/details');

// Pass data to the new screen
Navigator.pushNamed(context, '/details', arguments: 'Hello from HomeScreen');

// Retrieve data in the new screen
final String data = ModalRoute.of(context).settings.arguments as String;

```

### Module 2: Advanced Navigation Techniques

- Adding named routes to MaterialApp
- Handling navigation events and animations
- Implementing bottom navigation bars and tab bars
- Navigation with custom transitions

```dart
// Define named routes in the main.dart file
MaterialApp(
  initialRoute: '/',
  routes: {
    '/': (context) => HomeScreen(),
    '/details': (context) => DetailsScreen(),
    '/profile': (context) => ProfileScreen(),
  },
)

// Navigate to a new screen with a named route
Navigator.pushNamed(context, '/details');

// Navigate to a new screen with a custom transition
Navigator.push(
  context,
  MaterialPageRoute(
    builder: (context) => DetailsScreen(),
    transitionDuration: Duration(milliseconds: 500),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      return SlideTransition(
        position: Tween(begin: Offset(1.0, 0.0), end: Offset.zero)
            .animate(animation),
        child: child,
      );
    },
  ),
);
```

### Module 3: Introduction to ListViews in Flutter

- Understanding ListView basics
- Building static list views
- Creating dynamic list views with ListView.builder
- Implementing different types of list views (horizontal, grid)

```dart
// Creating a basic ListView with static data
ListView(
  children: <Widget>[
    ListTile(title: Text('Item 1')),
    ListTile(title: Text('Item 2')),
    ListTile(title: Text('Item 3')),
  ],
)

// Creating a dynamic ListView with ListView.builder
ListView.builder(
  itemCount: items.length,
  itemBuilder: (context, index) {
    return ListTile(title: Text(items[index]));
  },
)

// Creating a horizontal ListView
ListView(
  scrollDirection: Axis.horizontal,
  children: <Widget>[
    Container(width: 100, color: Colors.red),
    Container(width: 100, color: Colors.green),
    Container(width: 100, color: Colors.blue),
  ],
)

// Creating a GridView
GridView.count(
  crossAxisCount: 2,
  children: List.generate(4, (index) {
    return Container(color: Colors.purple);
  }),
)

```

### Module 4: Advanced ListViews and Listeners

- Handling list item taps and events
- Adding separators and dividers
- Implementing infinite scrolling and pagination
- Customizing list item layouts

```dart
// Handling list item taps
ListTile(
  title: Text('Item 1'),
  onTap: () {
    // Handle item tap
  },
)

// Adding separators and dividers
ListView.separated(
  separatorBuilder: (context, index) => Divider(),
  itemCount: items.length,
  itemBuilder: (context, index) {
    return ListTile(title: Text(items[index]));
  },
)

// Implementing infinite scrolling and pagination
ListView.builder(
  itemCount: items.length + 1,
  itemBuilder: (context, index) {
    if (index == items.length) {
      // Show loading indicator or load more items
      return CircularProgressIndicator();
    } else {
      return ListTile(title: Text(items[index]));
    }
  },
)

// Customizing list item layouts
ListView.builder(
  itemCount: items.length,
  itemBuilder: (context, index) {
    return Card(
      child: ListTile(
        title: Text(items[index]),
        subtitle: Text('Subtitle'),
        leading: Icon(Icons.circle),
        trailing: Icon(Icons.arrow_forward),
      ),
    );
  },
)

```

#### Listview Basics

- A `ListView` is a widget that displays a scrollable list of items.
- A `ListView` can be horizontal or vertical.
- A `ListView` can be created using the `ListView` widget or the `ListView.builder()` constructor.
- The `ListView` widget is used to create a list of items that are known in advance.
- The `ListView.builder()` constructor is used to create a list of items that are not known in advance.
- The `ListView.builder()` constructor is more efficient than the `ListView` widget because it only builds the items that are visible on the screen.

### Class Project

- In this project, we will build a movie app that displays a list of movies and allows the user to view the details of each movie.
- We will use the `Navigator` widget to manage the stack of routes.
- We will use the `Navigator.pushNamed()` method to navigate to a specific route.
- We will use the `Navigator.pop()` method to return to the previous route.
- We will use the `arguments` parameter of the `Navigator.pushNamed()` method to pass data to a named route.

<img src="https://cdn.dribbble.com/userupload/6187551/file/original-f3c21312ab67ac6875e605464dc4de49.png?compress=1&resize=2048x1535"/>
<br/>
<br/>
<br/>

<img src="https://cdn.dribbble.com/users/1619633/screenshots/15248148/media/fc519a6b9ea663a38f3c54001891b9d1.png?compress=1&resize=1600x1200&vertical=top"/>

Reference: https://dribbble.com/shots/15248148-Cinema-App-P1

<br/>

<img src="https://cdn.dribbble.com/userupload/2947187/file/original-86a8cbb45762cfe3c50ece94bdd953f2.png?compress=1&resize=1504x1128"/>

Reference: https://dribbble.com/shots/18538906-Movie-Streaming-Cinema-Booking-App
