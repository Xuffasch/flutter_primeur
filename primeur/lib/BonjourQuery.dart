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

  String message(String language) {
    return """
    {
      message(id: "$language") {
        id
        text
      }
    }
    """;
  }
}
