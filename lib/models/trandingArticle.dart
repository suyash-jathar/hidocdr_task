class TrandingArticle {
  int? id;
  String? articleTitle;
  String? redirectLink;
  String? articleImg;
  String? articleDescription;
  String? specialityId;
  int? rewardPoints;
  String? keywordsList;
  String? articleUniqueId;
  int? articleType;
  String? createdAt;

  TrandingArticle(
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

  TrandingArticle.fromJson(Map<String, dynamic> json) {
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
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['articleTitle'] = this.articleTitle;
    data['redirectLink'] = this.redirectLink;
    data['articleImg'] = this.articleImg;
    data['articleDescription'] = this.articleDescription;
    data['specialityId'] = this.specialityId;
    data['rewardPoints'] = this.rewardPoints;
    data['keywordsList'] = this.keywordsList;
    data['articleUniqueId'] = this.articleUniqueId;
    data['articleType'] = this.articleType;
    data['createdAt'] = this.createdAt;
    return data;
  }
}