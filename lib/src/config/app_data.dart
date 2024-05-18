import 'package:app_quitanda/src/Models/cart_item_model.dart';
import 'package:app_quitanda/src/Models/item_model.dart';
import 'package:app_quitanda/src/Models/user_model.dart';

ItemModel apple = ItemModel(
  itemName: 'Maçã',
  imgUrl: 'assets/fruits/apple.png',
  unit: 'kg',
  price: 5.5,
  description:
      'As melhores maçãs da região, maçãs de alta qualidade na sua mesa',
);

ItemModel grape = ItemModel(
  itemName: 'Uva',
  imgUrl: 'assets/fruits/grape.png',
  unit: 'kg',
  price: 7.4,
  description:
      'A uva é o fruto da videira ou parreira, uma planta da família Vitaceae. É originária da Ásia e uma das frutas mais antigas utilizadas na alimentação humana.',
);

ItemModel guava = ItemModel(
  itemName: 'Goiaba',
  imgUrl: 'assets/fruits/guava.png',
  unit: 'kg',
  price: 11.5,
  description:
      'A goiaba é um fruto carnoso, de casca verde e muito rico em fibras solúveis, que ajudam a reduzir o colesterol. Em seu interior há uma polpa branca, rosada, vermelha, amarela, pode ser encontrado de diferentes tamanhos.',
);

ItemModel kiwi = ItemModel(
  itemName: 'Kiwi',
  imgUrl: 'assets/fruits/kiwi.png',
  unit: 'un',
  price: 2.5,
  description:
      'A coloração dos frutos é marrom e sua superfície é repleta de pelos pardos. As sementes são pequenas, pretas e estão dispostas radialmente na polpa verde do fruto.',
);

ItemModel mango = ItemModel(
  itemName: 'Manga',
  imgUrl: 'assets/fruits/mango.png',
  unit: 'kg',
  price: 2.5,
  description:
      'O fruto é globoso, com uma profunda depressão no ponto de inserção da haste, que o prende aos ramos. De coloração vermelha ou verde, pode apresentar pequenas manchas esverdeadas ou amareladas.',
);

ItemModel papaya = ItemModel(
  itemName: 'Mamão',
  imgUrl: 'assets/fruits/papaya.png',
  unit: 'kg',
  price: 8,
  description:
      'O fruto do mamoeiro é carnoso e do tipo baga, com casca fina e coloração que varia do amarelo-claro à laranja e polpa comumente amarela ou alaranjada.',
);

List<ItemModel> items = [
  apple,
  grape,
  guava,
  kiwi,
  mango,
  papaya,
];

List<String> categories = [
  'Frutas',
  'Grãos',
  'Verduras',
  'Temperos',
  'Cereais',
];

List<CartItemModel> cartItems = [
  CartItemModel(
    item: apple,
    quantity: 1,
  ),
  CartItemModel(
    item: mango,
    quantity: 1,
  ),
  CartItemModel(
    item: guava,
    quantity: 3,
  ),
];

UserModel user = UserModel(
  phone: '(87) 9 9932-7101',
  cpf: '123.456.789-00',
  email: 'email@email.com',
  name: 'Douglas',
  passoword: '',
);
