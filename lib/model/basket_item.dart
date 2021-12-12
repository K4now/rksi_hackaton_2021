class BasketItem {
  BasketItem(
      {required this.index,
      required this.name,
      required this.price,
      this.description,
      this.imageUrl});

  //Индекс товара
  String index;
  ///Название товара
  String name;

  ///Цена товара
  double price;

  ///Описание
  String? description;
  //Картинка
  String? imageUrl;
}
