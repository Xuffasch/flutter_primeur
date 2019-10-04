import "package:flutter/material.dart";
import "package:graphql_flutter/graphql_flutter.dart";
import 'BonjourQuery.dart';
import "Bonjour.dart";
import "../graphqlConf.dart";

class BonjourUpdatePage extends StatefulWidget {
  final Bonjour bonjour;
  final bool isAdd;

  BonjourUpdatePage({Key key, this.bonjour, this.isAdd}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _BonjourUpdatePage();
}

class _BonjourUpdatePage extends State<BonjourUpdatePage> {
  TextEditingController language = TextEditingController();
  TextEditingController bonjourText = TextEditingController();
  String alert = "Type the new Hello !";

  GraphQLConfiguration graphQLConfiguration = GraphQLConfiguration();
  BonjourQuery mutation = BonjourQuery();

  @override
  void initState() {
    super.initState();
    if (!widget.isAdd) {
      language.text = widget.bonjour.id;
      bonjourText.text = widget.bonjour.text;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Create new Hello Message"),
      ),
      body: Container(
          margin: EdgeInsets.all(12),
          child: Column(
            children: <Widget>[
              Container(
                margin: EdgeInsets.all(8),
                child: TextField(
                  controller: language,
                  enabled: widget.isAdd,
                  decoration: InputDecoration(
                      icon: Icon(Icons.language), labelText: "Language"),
                ),
              ),
              Container(
                  margin: EdgeInsets.all(8),
                  child: TextField(
                    controller: bonjourText,
                    enabled: widget.isAdd,
                    decoration: InputDecoration(
                        icon: Icon(Icons.text_fields),
                        labelText: "'Hello' in that language"),
                  )
              ),
              SizedBox(height: 40.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    alert,
                    style: TextStyle(
                      fontFamily: "Roboto",
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 40.0, horizontal: 12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    FlatButton(
                      child: Text("Cancel"),
                      onPressed: () => Navigator.of(context).pop(),
                    ),
                    FlatButton(
                        child: Text("Add"),
                        onPressed: () async {
                          if (language.text.isNotEmpty &&
                              bonjourText.text.isNotEmpty) {
                            GraphQLClient _client =
                                graphQLConfiguration.clientToQuery();
                            QueryResult result = await _client.mutate(
                              MutationOptions(
                                  document: mutation.addMessage(
                                      language.text, bonjourText.text)),
                            );
                            if (!result.hasErrors) {
                              language.clear();
                              bonjourText.clear();
                              Navigator.of(context).pop();
                            } else {
                              setState(
                                  () => alert = "New language cannot be saved");
                            }
                          } else {
                            setState(
                                () => alert = "Please fill-in the information");
                          }
                        }
                    ),
                  ],
                ),
              ),
            ],
          )
        ),
    );
  }
}
