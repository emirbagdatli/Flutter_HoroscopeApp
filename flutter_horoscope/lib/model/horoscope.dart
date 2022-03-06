class Horoscope {
  final String _horoscopeName;
  final String _horoscopeDate;
  final String _horoscopeDetails;
  final String _horoscopeAvatarImage;
  final String _horoscopeBannerImage;

  get horoscopeName => this._horoscopeName;

  get horoscopeDate => this._horoscopeDate;

  get horoscopeDetails => this._horoscopeDetails;

  get horoscopeAvatarImage => this._horoscopeAvatarImage;

  get horoscopeBannerImage => this._horoscopeBannerImage;

  Horoscope(this._horoscopeName, this._horoscopeDate, this._horoscopeDetails,
      this._horoscopeAvatarImage, this._horoscopeBannerImage);

  @override
  String toString() {
    //implement toString
    return '$_horoscopeName - $_horoscopeBannerImage';
  }
}
