class UserModel{

  final String vid;
  final String name;
  final String email;
  final String photourl;
  final String grade;
  final String totalClasses;
  final String presents;
  final String absents;
  final String leaves;
  final String leavesLeft;

  UserModel(
      this.vid,
      this.name,
      this.email,
      this.photourl,
      this.grade,
      this.totalClasses,
      this.presents,
      this.absents,
      this.leaves,
      this.leavesLeft,
      );
  Map<String,dynamic> toJson()=>{
    vid:vid,
    name:name,
    email:email,
    photourl:photourl,
    grade:grade,
    totalClasses:totalClasses,
    presents:presents,
    absents:absents,
    leaves:leaves,
    leavesLeft:leavesLeft,

  };

}