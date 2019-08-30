import "package:flutter/material.dart";
import "package:graphql_flutter/graphql_flutter.dart";
import 'BonjourQuery.dart';
import "Bonjour.dart";
import "../graphqlConf.dart";

class MessagesListPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MessagesListPage();
}

class _MessagesListPage extends State<MessagesListPage> {
  List<Bonjour> listMessage = List<Bonjour>();
  GraphQLConfiguration graphQLConfiguration = GraphQLConfiguration();

  void fillList() async {
    BonjourQuery bonjourQuery = BonjourQuery();
    GraphQLClient _client = graphQLConfiguration.clientToQuery();
    QueryResult result = await _client.query(
      QueryOptions(
        document: bonjourQuery.messages(),
      ),
    );
    
    if (!result.hasErrors) {
      for (var i = 0; i < result.data["messages"].length; i++) {
        setState(() {
          listMessage.add(
            Bonjour(
              result.data["messages"][i]["id"],
              result.data["messages"][i]["text"]
            )
          );
        });
      }
    }

  }

  @override 
  void initState() {
    super.initState();
    fillList();
  }

  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hello from the World")
      ),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 12, vertical: 16),
        child: ListView.builder(
          itemCount: listMessage.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text("${listMessage[index].id}"),
              subtitle: Text("${listMessage[index].text}"),
            );
          },
        ),
      ),
    );
  }

}