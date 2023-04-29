import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  MainApp({super.key});
  final GoRouter _goRouter = GoRouter(

    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const HomePage(),
      ),
      GoRoute(
        path: '/login',
        builder: (context, state) => const LoginPage(),
      ),
    ],
    initialLocation: "/login",
  );
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _goRouter,
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('App Bar'), actions: [IconButton(onPressed: () {GoRouter.of(context).go('/login');}, icon: const Icon(Icons.arrow_back_ios))],),
      body: 
      Center(
        child: Text('Hello World!'),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {}, child: Icon(Icons.call),),
    );
  }
}

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          BoxDecoration()
          const Text("Login Page"),
          ElevatedButton(
            onPressed: () {
              GoRouter.of(context).go('/');
            },
            child: const Text('Go to Home'),
          ),
        ],
      ),
    );
  }
}
