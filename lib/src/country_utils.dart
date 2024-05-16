part of country_phone_validator;

class CountryUtils {
  static Country? getCountryByDialCode(String dialCode) {
    final index =
        countries.indexWhere((country) => country.dialCode == dialCode);
    if (index < 0) return null;
    return countries[index];
  }

  static Country? getCountryByIsoCode(String isoCode) {
    final index = countries.indexWhere((country) => country.isoCode == isoCode);
    if (index < 0) return null;
    return countries[index];
  }

  static bool validatePhoneNumber(String phoneNumber, String dialCode) {
    Country? country = getCountryByDialCode(dialCode);
    if (country == null) return false;
    int length = phoneNumber.length;
    bool lengthValid =
        length >= country.phoneMinLength && length <= country.phoneMaxLength;
    bool startingDigitsValid = country.startingDigits.isEmpty ||
        country.startingDigits.any((digits) => phoneNumber.startsWith(digits));
    return lengthValid && startingDigitsValid;
  }

  static bool validatePhoneNumberByContry(String phoneNumber, Country country) {
    int length = phoneNumber.length;
    bool lengthValid =
        length >= country.phoneMinLength && length <= country.phoneMaxLength;
    bool startingDigitsValid = country.startingDigits.isEmpty ||
        country.startingDigits.any((digits) => phoneNumber.startsWith(digits));
    return lengthValid && startingDigitsValid;
  }
}
