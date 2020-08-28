
@available(iOS 14.0, *)
let GKPlayerIDNoLongerAvailable: String
@available(iOS 4.1, *)
class GKPlayer : GKBasePlayer {
  class func loadPlayers(forIdentifiers identifiers: [String], withCompletionHandler completionHandler: (([GKPlayer]?, Error?) -> Void)? = nil)
  class func loadPlayers(forIdentifiers identifiers: [String]) async throws -> [GKPlayer]?
  @available(iOS 13.0, *)
  func scopedIDsArePersistent() -> Bool
  @available(iOS 12.4, *)
  var gamePlayerID: String { get }
  @available(iOS 12.4, *)
  var teamPlayerID: String { get }
  var alias: String { get }
  @available(iOS 9.0, *)
  class func anonymousGuestPlayer(withIdentifier guestIdentifier: String) -> Self
  @available(iOS 9.0, *)
  var guestIdentifier: String? { get }
  @available(iOS 14.0, *)
  var isInvitable: Bool { get }
}
extension GKPlayer {
  @available(iOS 5.0, *)
  func loadPhoto(for size: GKPlayer.PhotoSize, withCompletionHandler completionHandler: ((UIImage?, Error?) -> Void)? = nil)
  @available(iOS 5.0, *)
  func loadPhoto(for size: GKPlayer.PhotoSize) async throws -> UIImage?
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
  @available(iOS, introduced: 4.1, deprecated: 8.0, message: "use -[GKLocalPlayer loadFriendPlayers...]")
  var isFriend: Bool { get }
}
