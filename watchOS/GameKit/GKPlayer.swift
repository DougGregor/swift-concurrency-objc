
@available(watchOS 7.0, *)
let GKPlayerIDNoLongerAvailable: String
@available(watchOS 3.0, *)
class GKPlayer : GKBasePlayer {
  class func loadPlayers(forIdentifiers identifiers: [String], withCompletionHandler completionHandler: (([GKPlayer]?, Error?) -> Void)? = nil)
  @available(watchOS 6.0, *)
  func scopedIDsArePersistent() -> Bool
  @available(watchOS 5.4, *)
  var gamePlayerID: String { get }
  @available(watchOS 5.4, *)
  var teamPlayerID: String { get }
  var alias: String { get }
}
extension NSNotification.Name {
  static let GKPlayerDidChangeNotificationName: NSNotification.Name
}
extension GKPlayer {
  @available(watchOS, introduced: 2.0, deprecated: 2.0, message: "use -[GKLocalPlayer loadFriendPlayers...]")
  var isFriend: Bool { get }
}
