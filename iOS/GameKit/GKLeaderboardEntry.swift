
extension GKLeaderboard {
  @available(iOS 14.0, *)
  class Entry : NSObject {
    var player: GKPlayer { get }
    var rank: Int { get }
    var score: Int { get }
    var formattedScore: String { get }
    var context: Int { get }
    var date: Date { get }
  }
}
