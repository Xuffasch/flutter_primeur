class Client {
  final int id;
  final String business;
  final int addressNumber;
  final String address;
  final int postcode;
  final String city;

  Client({
    this.id,
    this.business,
    this.addressNumber,
    this.address,
    this.postcode,
    this.city,
  });

  factory Client.fromJSON(Map<String, dynamic> json) {
    return Client(
      id: json['id'],
      business: json['business'],
      addressNumber: json['addressNumber'],
      address: json['address'],
      postcode: json['postcode'], 
      city: json['city'],
    );
  }
}