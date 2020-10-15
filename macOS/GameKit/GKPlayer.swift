
@available(macOS 11.0, *)
let GKPlayerIDNoLongerAvailable: String
@available(macOS 10.8, *)
class GKPlayer : GKBasePlayer {
  class func loadPlayers(forIdentifiers identifiers: [String], withCompletionHandler completionHandler: (([GKPlayer]?, Error?) -> Void)? = nil)
  @available(macOS 10.15, *)
  func scopedIDsArePersistent() -> Bool
  @available(macOS 10.14.6, *)
  var gamePlayerID: String { get }
  @available(macOS 10.14.6, *)
  var teamPlayerID: String { get }
  var alias: String { get }
  @available(macOS 10.11, *)
  class func anonymousGuestPlayer(withIdentifier guestIdentifier: String) -> Self
  @available(macOS 10.11, *)
  var guestIdentifier: String? { get }
  @available(macOS 11.0, *)
  var isInvitable: Bool { get }
}
extension GKPlayer {
  @available(macOS 10.8, *)
  func loadPhoto(for size: GKPlayer.PhotoSize, withCompletionHandler completionHandler: ((NSImage?, Error?) -> Void)? = nil)
}
extension GKPlayer {
  enum PhotoSize : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case small
    case normal
  }
}
extension NSNotification.Name {
  static let GKPlayerDidChangeNotificationName: NSNotification.Name
}
extension GKPlayer {
  @available(macOS, introduced: 10.8, deprecated: 10.10, message: "use -[GKLocalPlayer loadFriendPlayers...]")
  var isFriend: Bool { get }
}
