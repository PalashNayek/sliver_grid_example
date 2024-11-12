// item_view_model.dart
import 'package:flutter/material.dart';

import '../models/item.dart';

class ItemViewModel extends ChangeNotifier {
  List<Item> items = [
    Item(title: 'Item 1', imageUrl: 'https://images.rawpixel.com/image_png_800/cHJpdmF0ZS9sci9pbWFnZXMvd2Vic2l0ZS8yMDIyLTA1L3BmLXMxMjctdGQtMDAyMV80LnBuZw.png'),
    Item(title: 'Item 2', imageUrl: 'https://images.rawpixel.com/image_png_800/cHJpdmF0ZS9sci9pbWFnZXMvd2Vic2l0ZS8yMDIyLTA1L3BmLXMxMjctdGQtMDAyMV80LnBuZw.png'),
    Item(title: 'Item 3', imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQeSAuIysxgGA_uFjM6YMxUSRMwA4R9RNEKAA&s'),
    Item(title: 'Item 1', imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQeSAuIysxgGA_uFjM6YMxUSRMwA4R9RNEKAA&s'),
    Item(title: 'Item 2', imageUrl: 'https://e7.pngegg.com/pngimages/189/291/png-clipart-horse-white-white-horse-silver-horse-horse-image-file-formats-thumbnail.png'),
    Item(title: 'Item 3', imageUrl: 'https://e7.pngegg.com/pngimages/189/291/png-clipart-horse-white-white-horse-silver-horse-horse-image-file-formats-thumbnail.png'),
    Item(title: 'Item 1', imageUrl: 'https://i.pinimg.com/736x/e8/40/ba/e840ba294a220431659b6a71bdbee8a5.jpg'),
    Item(title: 'Item 2', imageUrl: 'https://i.pinimg.com/736x/e8/40/ba/e840ba294a220431659b6a71bdbee8a5.jpg'),
    Item(title: 'Item 3', imageUrl: 'https://image.similarpng.com/very-thumbnail/2021/05/King-queen-cute-cartoon-on-transparent-background-PNG.png'),
    Item(title: 'Item 1', imageUrl: 'https://image.similarpng.com/very-thumbnail/2021/05/King-queen-cute-cartoon-on-transparent-background-PNG.png'),
    Item(title: 'Item 2', imageUrl: 'https://w7.pngwing.com/pngs/905/599/png-transparent-graphy-king-thumbnail.png'),
    Item(title: 'Item 3', imageUrl: 'https://w7.pngwing.com/pngs/905/599/png-transparent-graphy-king-thumbnail.png'),
    // Add more items as needed
  ];

  void addItem(Item item) {
    items.add(item);
    notifyListeners();
  }
}
