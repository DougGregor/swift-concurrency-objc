
extension GKLeaderboard {
  @available(macOS 11.0, *)
  class Entry : NSObject {
    var player: GKPlayer { get }
    var rank: Int { get }
    var score: Int { get }
    var formattedScore: String { get }
    var context: Int { get }
    var date: Date { get }
  }
}
