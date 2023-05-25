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

### 2. Listviews

#### 2.1. Listview Basics

- A `ListView` is a widget that displays a scrollable list of items.
- A `ListView` can be horizontal or vertical.
- A `ListView` can be created using the `ListView` widget or the `ListView.builder()` constructor.
- The `ListView` widget is used to create a list of items that are known in advance.
- The `ListView.builder()` constructor is used to create a list of items that are not known in advance.
- The `ListView.builder()` constructor is more efficient than the `ListView` widget because it only builds the items that are visible on the screen.

##### Example

```dart

ListView.builder(
  itemCount: 10,
  itemBuilder: (context, index) {
    return ListTile(
      title: Text('Item $index'),
    );
  },
);

```

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
