import "package:exercise/widgets/bookmark.dart";
import "package:flutter/material.dart";

class BookmarksV extends StatelessWidget {
  const BookmarksV({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.4,
      child: GridView.count(
        crossAxisCount: 2,
        children: const <Widget>[
          Bookmark(
            title: "Мои приёмы",
          ),
          Bookmark(
            title: "Медкарта",
          ),
          Bookmark(
            title: "Показатели здоровья",
          ),
          Bookmark(
            title: "Услуги и цены",
          ),
        ],
      ),
    );
  }
}
