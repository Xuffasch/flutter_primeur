class BonjourQuery {
  String messages() {
    return """
      {
        messages {
          id
          text
        }
      }
    """;
  }

  String message(String id) {
    return """
    {
      message(id: "$id") {
        id
        text
      }
    }
    """;
  }

  String addMessage(String language, String bonjour) {
    return """
      mutation {
        addMessage(language: "$language", bonjour: "$bonjour"){
          id
          text
        }
      }
    """;
  }
}
