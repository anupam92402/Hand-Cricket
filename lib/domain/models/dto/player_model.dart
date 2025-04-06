class PlayerModel {
  final String name;
  final int totalScore;
  final int ballBowled;
  final List<int> scoreList;
  final PlayerType playerType;

 const PlayerModel(
      {required this.name,
      required this.totalScore,
      required this.scoreList,
      required this.ballBowled,
      required this.playerType});
}

enum PlayerType { player, bot }
