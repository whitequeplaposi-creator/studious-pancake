import 'package:json_annotation/json_annotation.dart';

part 'user.g.dart';

@JsonSerializable()
class User {
  final String id;
  final String email;
  final String firstName;
  final String lastName;
  final String phone;
  final List<Address> addresses;
  final List<String> wishlist;
  final DateTime createdAt;
  final DateTime updatedAt;
  
  User({
    required this.id,
    required this.email,
    required this.firstName,
    required this.lastName,
    required this.phone,
    required this.addresses,
    required this.wishlist,
    required this.createdAt,
    required this.updatedAt,
  });
  
  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
  Map<String, dynamic> toJson() => _$UserToJson(this);
  
  // Helper method to get full name
  String get fullName => '$firstName $lastName';
  
  // Helper method to get default address
  Address? get defaultAddress {
    try {
      return addresses.firstWhere((addr) => addr.isDefault);
    } catch (e) {
      return addresses.isNotEmpty ? addresses.first : null;
    }
  }
}

@JsonSerializable()
class Address {
  final String id;
  final String street;
  final String city;
  final String postalCode;
  final String country;
  final bool isDefault;
  
  Address({
    required this.id,
    required this.street,
    required this.city,
    required this.postalCode,
    required this.country,
    required this.isDefault,
  });
  
  factory Address.fromJson(Map<String, dynamic> json) => _$AddressFromJson(json);
  Map<String, dynamic> toJson() => _$AddressToJson(this);
  
  // Helper method to get formatted address
  String get formatted => '$street, $postalCode $city, $country';
}
