part of x_assets_data;

class XIconsData {
  final String? fontFamily;
  final String? fontPackage;
  final XIconCharactersData characters;
  final XIconSizesData sizes;

  XIconsData({
    this.fontFamily,
    this.fontPackage,
    final XIconCharactersData? characters,
    final XIconSizesData? sizes,
  })  : characters = characters ?? XIconCharactersData(),
        sizes = sizes ?? const XIconSizesData();
}

class XIconCharactersData {
  final String addProduct;
  final String arrowBack;
  final String dismiss;
  final String options;
  final String tag;
  final String vikoin;
  final String shoppingCart;

  XIconCharactersData({
    final String? addProduct,
    final String? arrowBack,
    final String? dismiss,
    final String? options,
    final String? tag,
    final String? vikoin,
    final String? shoppingCart,
  })  : addProduct =
            addProduct ?? String.fromCharCodes([57344, 58343, 58413, 57568]),
        arrowBack =
            arrowBack ?? String.fromCharCodes([57344, 58537, 59260, 57572]),
        dismiss = dismiss ?? String.fromCharCodes([57344, 57911, 61195, 57514]),
        options = options ?? String.fromCharCodes([58088, 58314, 57452]),
        tag = tag ?? String.fromCharCodes([59112, 57969, 57576]),
        vikoin = vikoin ?? String.fromCharCodes([57344, 57929, 57730, 57522]),
        shoppingCart =
            shoppingCart ?? String.fromCharCodes([57344, 58580, 57759, 57350]);
}
