class TrandingBulletin {
  int? id;
  String? articleTitle;
  String? redirectLink;
  String? articleImg;
  String? articleDescription;
  int? specialityId;
  int? rewardPoints;
  int? keywordsList;
  int? articleUniqueId;
  int? articleType;
  String? createdAt;

  TrandingBulletin(
      {this.id,
      this.articleTitle,
      this.redirectLink,
      this.articleImg,
      this.articleDescription,
      this.specialityId,
      this.rewardPoints,
      this.keywordsList,
      this.articleUniqueId,
      this.articleType,
      this.createdAt});

  TrandingBulletin.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    articleTitle = json['articleTitle'];
    redirectLink = json['redirectLink'];
    articleImg = json['articleImg'];
    articleDescription = json['articleDescription'];
    specialityId = json['specialityId'];
    rewardPoints = json['rewardPoints'];
    keywordsList = json['keywordsList'];
    articleUniqueId = json['articleUniqueId'];
    articleType = json['articleType'];
    createdAt = json['createdAt'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['articleTitle'] = articleTitle;
    data['redirectLink'] = redirectLink;
    data['articleImg'] = articleImg;
    data['articleDescription'] = articleDescription;
    data['specialityId'] = specialityId;
    data['rewardPoints'] = rewardPoints;
    data['keywordsList'] = keywordsList;
    data['articleUniqueId'] = articleUniqueId;
    data['articleType'] = articleType;
    data['createdAt'] = createdAt;
    return data;
  }
}