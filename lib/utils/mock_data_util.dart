import 'package:hire_me/models/profile_model.dart';

class MockData {
  static List<Profile> getProfilesData() {
    List<Profile> data = [
      Profile(
          "John Doe",
          "We're passionate about creating beautiful design for startups & leading brands",
          "UI/UX Designer",
          "assets/circle-man1.png",
          "assets/man1.png",
          100,
          200,
          4.5, []),
      Profile(
          "Mary Luis",
          "We're passionate about creating beautiful design for startups & leading brands",
          "UI/UX Designer",
          "assets/circle-woman1.png",
          "assets/woman1.png",
          100,
          800,
          4.0, []),
      Profile(
          "Marina Joe",
          "We're passionate about creating beautiful design for startups & leading brands",
          "UI/UX Designer",
          "assets/circle-woman2.png",
          "assets/woman2.png",
          500,
          200,
          4.0, []),
      Profile(
          "Carlos Joe",
          "We're passionate about creating beautiful design for startups & leading brands",
          "UI/UX Designer",
          "assets/circle-man2.png",
          "assets/man2.png",
          500,
          300,
          3.0, [])
    ];
    return data;
  }
  static List<String> getProjectsPhoto() {
    List<String> data = [
      "assets/project1.jpg",
      "assets/project2.jpg",
      "assets/project3.jpg",
      "assets/project4.jpg"
    ];
    return data;
  }
}
