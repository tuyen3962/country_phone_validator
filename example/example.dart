import 'package:country_phone_validator/country_phone_validator.dart';

void main() {
  // Example usage to validate a phone number
  String dialCode = "+20";
  String phoneNumber = "1234567890";

  bool isValid = CountryUtils.validatePhoneNumber(phoneNumber, dialCode);

  if (isValid) {
    print("The phone number is valid.");
  } else {
    print("The phone number is invalid.");
  }

  // Example usage to retrieve country information
  Country? country = CountryUtils.getCountryByIsoCode("GB");
  if (country != null) {
    print("Country: ${country.name}, Dial Code: ${country.dialCode}");
  } else {
    print("Country not found.");
  }
}
