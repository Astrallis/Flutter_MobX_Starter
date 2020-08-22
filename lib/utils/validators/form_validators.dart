String emailValidator(String value) {
  Pattern pattern =
      r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
  RegExp regex = new RegExp(pattern);

  if (value.trim().isEmpty) return '*Required';
  if (!regex.hasMatch(value.trim()))
    return '*Enter a valid email';
  else
    return null;
}

String phoneNumberValidator(String value) {
  Pattern mobileNumber = r'^[6789]\d{9}$';
  RegExp mobileRegex = new RegExp(mobileNumber);
  if (value.trim().isEmpty) return '*Required';
  if (!mobileRegex.hasMatch(value.trim()))
    return '*Enter a valid Phone Number';
  else
    return null;
}

String loginIdValidator(String value) {
  Pattern pattern =
      r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
  RegExp regex = new RegExp(pattern);

  Pattern mobileNumber = r'^(\+)91[789]\d{9}$';
  RegExp mobileRegex = new RegExp(mobileNumber);
  if (value.trim().isEmpty) return '*Required';
  if (!regex.hasMatch(value.trim()) && !mobileRegex.hasMatch(value.trim()))
    return '*Enter a valid email or phone with "+91"';
  else
    return null;
}

String passwordValidator(String value) {
  return value.isEmpty ? "*Required" : null;
}

String requiredValidator(String value) {
  return value.isEmpty ? "*Required" : null;
}