import "package:flutter/material.dart";
import "0-Dashboard/homePage.dart";
import "1-Clients/clientListPage.dart";
import "3-Messages/messagesListPage.dart";
import "3-Messages/messageCreatePage.dart";

class RouteGenerator {
  // App routes
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => HomePage(title: "Primeur Demo"));
      case '/client':
        return MaterialPageRoute(builder: (_) => ClientListPage(title: "Client List Page Title"));
      case '/messages':
        return MaterialPageRoute(builder: (_) => MessagesListPage());
      case '/updateMessages':
        return MaterialPageRoute(builder: (_) => BonjourUpdatePage(isAdd: true));
      default:
        return _errorRoute();
    }
  }

  // Error route
  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Error'),
        ),
        body: Center(
          child: Text('ERROR'),
        ),
      );
    });
  }
}

