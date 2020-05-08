class Profile {
  String _name;
  String _description;
  String _occupation;
  String _circlePhoto;
  String _photo;
  int _followers;
  int _following;
  double _yearsExperience;
  List<String> _projectsPhotos;

  Profile(this._name, this._description, this._occupation,this._circlePhoto, this._photo,
      this._followers, this._following, this._yearsExperience, this._projectsPhotos);

  String get name => _name;

  String get description => _description;

  List<String> get projectsPhotos => _projectsPhotos;

  int get following => _following;

  int get followers => _followers;

  String get circlePhoto => _circlePhoto;

  String get photo => _photo;

  String get occupation => _occupation;

  double get yearsExperience => _yearsExperience;
}
