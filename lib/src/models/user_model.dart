class UserModel{
  String? docId;
  String? uid;
  String? thumbnail;
  String? displayName;

  UserModel({
    this.docId,
    this.uid,
    this.thumbnail,
    this.displayName,
});

  factory UserModel.fromJson(String docId, Map<String, dynamic> json){
    return UserModel(
      docId: docId,
      uid: json['uid'] != null ? json['uid'] as String : '',
      thumbnail: json['thumbnail'] != null ? json['thumbnail'] as String : '',
      displayName: json['displayName'] != null ? json['displayName'] as String : '',
    );
  }
}