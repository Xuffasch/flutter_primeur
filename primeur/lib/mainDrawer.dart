import "package:flutter/material.dart";
import "0-Dashboard/homePage.dart";
import "1-Clients/clientListPage.dart";
import "2a-Orders/orderListPage.dart";
import "2b-Procurements/procurementListPage.dart";
import "messagesListPage.dart";

class MainDrawer extends StatelessWidget {
  final accountName;
  final sourceScreen;

  String get accountAbbrv => accountName.substring(0, 2);

  const MainDrawer({
    this.accountName,
    this.sourceScreen,
  });

  Widget nextWidget(String destination) {
    switch (destination) {
      case "Dashboard":
        return HomePage(title: "Récapitulatif");
      case "Client":
        return ClientListPage(title: "Clients");
      case "Order":
        return OrderListPage(title: "Commandes");
      case "Procurement":
        return ProcurementListPage(title: "Achats");
      case "Messages":
        return MessagesListPage();
      default:
        return HomePage(title: "Récapitulatif");
    }
  }

  void transition(BuildContext context, String from, String to) {
    if (from != to) {
      print(to + " screen is called from " + from);
      Navigator.of(context).pop();
      Navigator.of(context).push(
        PageRouteBuilder(
          pageBuilder: (BuildContext context, _, __) {
            return nextWidget(to);
          },
          transitionsBuilder: (_, Animation<double> animation, __, Widget child) {
            return FadeTransition(
              opacity: animation,
              child: child,
            );
          }, 
        )
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text(accountName),
            accountEmail: null,
            currentAccountPicture: CircleAvatar(
              backgroundColor: Colors.yellow,
              child: Text(
                accountAbbrv,
                style: TextStyle(
                  fontSize: 24,
                ),
              ),
            ),
          ),
          ListTile(
              leading: Text("Récapitulatif"),
              onTap: () {
                transition(context, sourceScreen, "Dashboard");
              }),
          Divider(),
          ListTile(
            leading: Text("Clients"),
            onTap: () {
              transition(context, sourceScreen, "Client");
            },
          ),
          Divider(),
          ListTile(
            leading: Text("Commandes"),
              onTap: () {
                transition(context, sourceScreen, "Order");
            }
          ),
          Divider(),
          ListTile(
            leading: Text("Achats"),
            onTap: () {
              transition(context, sourceScreen, "Procurement");
            },
          ),
          Divider(),
          ListTile(
            leading: Text("Messages"),
            onTap: () {
              transition(context, sourceScreen, "Messages");
            },
          ),
        ],
      ),
    );
  }
}
