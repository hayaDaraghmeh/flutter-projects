import 'package:flutter/material.dart';
import 'package:task1flutetr/models/news_item_model.dart';

class NewsItemCard extends StatelessWidget {
  const NewsItemCard({
    super.key,
    required this.newsItem,
  });
  final NewsItem newsItem;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(
          height: 20,
        ),
        Container(
          width: MediaQuery.of(context).size.width * 0.25,
          height: MediaQuery.of(context).size.width * 0.25,
          clipBehavior: Clip.antiAliasWithSaveLayer,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
          ),
          child: Image.network(
            newsItem.image,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(width: 20),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                newsItem.category,
                style: const TextStyle(
                  fontSize: 14,
                  color: Colors.black54,
                ),
              ),
              const SizedBox(
                height: 2,
              ),
              Text(
                (newsItem.title) * 2,
                style: const TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                  fontWeight: FontWeight.w700,
                ),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              const SizedBox(
                height: 5,
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    width: 30,
                    height: 30,
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                    ),
                    child: Image.network(
                      newsItem.ownerImage,
                      width: 20,
                      height: 20,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    newsItem.ownerName,
                    style: const TextStyle(
                      fontSize: 12,
                      color: Colors.black54,
                    ),
                  ),
                  const CircleAvatar(
                    radius: 4,
                    backgroundColor: Colors.grey,
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Text(
                    newsItem.createdAt,
                    style: const TextStyle(
                      fontSize: 12,
                      color: Colors.black54,
                    ),
                  ),
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}
