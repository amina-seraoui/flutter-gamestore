class Game {
  String bgImage;
  String icon;
  String name;
  String type;
  num score;
  num download;
  num review;
  String description;
  List<String> images;

  Game(
    // Generative constructor (https://dart.dev/language/constructors#generative-constructors)
    this.bgImage,
    this.icon,
    this.name,
    this.type,
    this.score,
    this.download,
    this.review,
    this.description,
    this.images,
  );

  static List<Game> games() {
    return [
      Game(
        'assets/images/ori1.jpg',
        'assets/images/ori_logo.png',
        'Ori and The Blind Forest',
        'Adventure',
        4.8,
        382,
        324,
        'Ori and the Blind Forest is a platform-adventure Metroidvania video game developed by Moon Studios and published by Microsoft Studios. The game was released for Xbox One and Microsoft Windows on March 11, 2015 and for Nintendo Switch on September 27, 2019. Players assume control of Ori, a small white guardian spirit, and Sein, who is the "light and eyes" of the Forest\'s Spirit Tree.',
        [
          'assets/images/ori2.jpg',
          'assets/images/ori3.jpg',
          'assets/images/ori4.jpg',
        ],
      ),
      Game(
        'assets/images/rl1.jpg',
        'assets/images/rl_logo.png',
        'Rayman Legends',
        'Adventure',
        4.7,
        226,
        148,
        'Rayman Legends is a platform video game developed by Ubisoft Montpellier and published by Ubisoft. It is the fifth main title in the Rayman series and the direct sequel to the 2011 game Rayman Origins. The game was released for Microsoft Windows, PlayStation 3, Xbox 360, Wii U, and PlayStation Vita platforms in August and September 2013.',
        [
          'assets/images/rl2.jpg',
          'assets/images/rl3.jpg',
          'assets/images/rl4.jpg',
          'assets/images/rl5.jpg',
        ],
      ),
      Game(
        'assets/images/legend1.jpg',
        'assets/images/legend_logo.jpg',
        'League of Legends',
        'MOBA',
        4.9,
        382,
        324,
        'League of Legends is a team-based strategy game where two teams of five powerful champions face off to destroy the other’s base. Choose from over 140 champions to make epic plays, secure kills, and take down towers as you battle your way to victory. Move through all the levels and become the best player in the world.',
        [
          'assets/images/legend2.jpg',
          'assets/images/legend3.jpg',
          'assets/images/legend4.jpg',
        ],
      )
    ];
  }
}
