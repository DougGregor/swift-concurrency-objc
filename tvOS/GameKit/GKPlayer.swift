
@available(tvOS 14.0, *)
let GKPlayerIDNoLongerAvailable: String
@available(tvOS 4.1, *)
class GKPlayer : GKBasePlayer {
  class func loadPlayers(forIdentifiers identifiers: [String], withCompletionHandler completionHandler: (([GKPlayer]?, Error?) -> Void)? = nil)
  class func loadPlayers(forIdentifiers identifiers: [String]) async throws -> [GKPlayer]
  @available(tvOS 13.0, *)
  func scopedIDsArePersistent() -> Bool
  @available(tvOS 12.4, *)
  var gamePlayerID: String { get }
  @available(tvOS 12.4, *)
  var teamPlayerID: String { get }
  var alias: String { get }
  @available(tvOS 9.0, *)
  class func anonymousGuestPlayer(withIdentifier guestIdentifier: String) -> Self
  @available(tvOS 9.0, *)
  var guestIdentifier: String? { get }
  @available(tvOS 14.0, *)
  var isInvitable: Bool { get }
}
extension GKPlayer {
  @available(tvOS 5.0, *)
  func loadPhoto(for size: GKPlayer.PhotoSize, withCompletionHandler completionHandler: ((UIImage?, Error?) -> Void)? = nil)
  @available(tvOS 5.0, *)
  func loadPhoto(for size: GKPlayer.PhotoSize) async throws -> UIImage
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
}
