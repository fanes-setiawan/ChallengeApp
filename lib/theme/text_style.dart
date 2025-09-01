class TextStyleHelper {
  static TextStyleHelper? _instance;

  TextStyleHelper._();

  static TextStyleHelper get instance {
    _instance ??= TextStyleHelper._();
    return _instance!;
  }

  // example
  // TextStyle get headline30SemiBoldPoppins => TextStyle(
  //       fontSize: 30.fSize,
  //       fontWeight: FontWeight.w600,
  //       fontFamily: 'Poppins',
  //       color: appTheme.gray_900,
  //     );
}
