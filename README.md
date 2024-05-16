# Country Phone Validator

The **Country Phone Validator** Dart package provides functionality to validate phone numbers based on country codes. It includes information about countries' dial codes, ISO codes, and phone number length constraints.

## Features

- **Country Information**: Retrieve information about countries such as name, ISO code, dial code, and phone number length constraints.
- **Phone Number Validation**: Validate phone numbers based on country dial codes and length constraints.
- **Extensible**: Easily extend the package with additional country information or validation rules.

## Installation

To use this package, add `country_phone_validator` as a dependency in your `pubspec.yaml` file:

```yaml
dependencies:
  country_phone_validator: ^0.0.1
```
## Usage
```dart
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
```
## API Reference
# Country
Represents a country with its associated information:

name: The name of the country.
isoCode: The ISO 3166-1 alpha-2 code of the country.
dialCode: The international dialing code of the country.
phoneMinLength: The minimum length of a phone number in the country.
phoneMaxLength: The maximum length of a phone number in the country.
CountryUtils
A utility class providing methods for retrieving country information and validating phone numbers:

getCountryByDialCode(String dialCode): Retrieve a country by its dial code.
getCountryByIsoCode(String isoCode): Retrieve a country by its ISO code.
validatePhoneNumber(String phoneNumber, String dialCode): Validate a phone number based on the country's dial code.
Contributing
Contributions to this package are welcome! Feel free to open issues or submit pull requests on the GitHub repository.

## License
This package is available under the MIT License.