import 'package:hire_me/models/profile_model.dart';

class ProfileData {
  static List<Profile> getData() {
    List<Profile> data = [
      Profile(
          "John Doe",
          "We're passionate about creating beautiful design for startups & leading brands",
          "UI/UX Designer",
          "assets/man1.png",
          100,
          200,
          4.5, []),
      Profile(
          "Martin Luis",
          "We're passionate about creating beautiful design for startups & leading brands",
          "UI/UX Designer",
          "assets/woman1.png",
          100,
          800,
          4.0, []),
      Profile(
          "Marina Joe",
          "We're passionate about creating beautiful design for startups & leading brands",
          "UI/UX Designer",
          "assets/woman2.png",
          500,
          200,
          4.0, []),
      Profile(
          "Carlos Joe",
          "We're passionate about creating beautiful design for startups & leading brands",
          "UI/UX Designer",
          "assets/man2.png",
          500,
          300,
          3.0, [])
    ];
    return data;
  }
}
