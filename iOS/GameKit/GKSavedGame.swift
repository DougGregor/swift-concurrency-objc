
@available(iOS 8.0, *)
class GKSavedGame : NSObject, NSCopying {
  @available(iOS 8.0, *)
  var name: String? { get }
  @available(iOS 8.0, *)
  var deviceName: String? { get }
  @available(iOS 8.0, *)
  var modificationDate: Date? { get }
  @available(iOS 8.0, *)
  func loadData(completionHandler handler: ((Data?, Error?) -> Void)? = nil)
  @available(iOS 8.0, *)
  func loadData() async throws -> Data?
}
extension GKLocalPlayer : GKSavedGameListener {
  @available(iOS 8.0, *)
  func fetchSavedGames(completionHandler handler: (([GKSavedGame]?, Error?) -> Void)? = nil)
  @available(iOS 8.0, *)
  func fetchSavedGames() async throws -> [GKSavedGame]?
  @available(iOS 8.0, *)
  func saveGameData(_ data: Data, withName name: String, completionHandler handler: ((GKSavedGame?, Error?) -> Void)? = nil)
  @available(iOS 8.0, *)
  func saveGameData(_ data: Data, withName name: String) async throws -> GKSavedGame?
  @available(iOS 8.0, *)
  func deleteSavedGames(withName name: String, completionHandler handler: ((Error?) -> Void)? = nil)
  @available(iOS 8.0, *)
  func deleteSavedGames(withName name: String) async throws
  @available(iOS 8.0, *)
  func resolveConflictingSavedGames(_ conflictingSavedGames: [GKSavedGame], with data: Data, completionHandler handler: (([GKSavedGame]?, Error?) -> Void)? = nil)
  @available(iOS 8.0, *)
  func resolveConflictingSavedGames(_ conflictingSavedGames: [GKSavedGame], with data: Data) async throws -> [GKSavedGame]?
}
