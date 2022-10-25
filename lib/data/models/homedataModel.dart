import 'dart:convert';

List<HomedataModel> homedataModelFromJson(String str) => List<HomedataModel>.from(json.decode(str).map((x) => HomedataModel.fromJson(x)));

String homedataModelToJson(List<HomedataModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class HomedataModel {
    HomedataModel({
        required this.type,
        required this.name,
        required this.info,
        required this.shortDescription,
        required this.description,
        required this.rawHtml,
        required this.isCard,
        required this.image,
        required this.link,
        required this.order,
        required this.created,
    });

    String type;
    String name;
    String info;
    String shortDescription;
    String description;
    String rawHtml;
    bool isCard;
    String image;
    String link;
    int order;
    String created;

    factory HomedataModel.fromJson(Map<String, dynamic> json) => HomedataModel(
        type: json["type"],
        name: json["name"],
        info: json["info"],
        shortDescription: json["short_description"],
        description: json["description"],
        rawHtml: json["raw_html"],
        isCard: json["is_card"],
        image: json["image"],
        link: json["link"],
        order: json["order"],
        created: json["created"],
    );

    Map<String, dynamic> toJson() => {
        "type": type,
        "name": name,
        "info": info,
        "short_description": shortDescription,
        "description": description,
        "raw_html": rawHtml,
        "is_card": isCard,
        "image": image,
        "link": link,
        "order": order,
        "created": created,
    };
}
