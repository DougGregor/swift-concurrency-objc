
@available(watchOS 3.0, *)
class GKPlayer : GKBasePlayer {
  class func loadPlayers(forIdentifiers identifiers: [String], withCompletionHandler completionHandler: (([GKPlayer]?, Error?) -> Void)? = nil)
  var alias: String { get }
}
extension NSNotification.Name {
  static let GKPlayerDidChangeNotificationName: NSNotification.Name
}
extension GKPlayer {
  @available(watchOS, introduced: 2.0, deprecated: 2.0, message: "use -[GKLocalPlayer loadFriendPlayers...]")
  var isFriend: Bool { get }
}
