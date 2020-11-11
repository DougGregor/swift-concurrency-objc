
@available(macOS 10.10, *)
class GKSavedGame : NSObject, NSCopying {
  @available(macOS 10.10, *)
  var name: String? { get }
  @available(macOS 10.10, *)
  var deviceName: String? { get }
  @available(macOS 10.10, *)
  var modificationDate: Date? { get }
  @available(macOS 10.10, *)
  func loadData(completionHandler handler: ((Data?, Error?) -> Void)? = nil)
  @available(macOS 10.10, *)
  func loadDataAsync() async throws -> Data
}
extension GKLocalPlayer : GKSavedGameListener {
  @available(macOS 10.10, *)
  func fetchSavedGames(completionHandler handler: (([GKSavedGame]?, Error?) -> Void)? = nil)
  @available(macOS 10.10, *)
  func fetchSavedGamesAsync() async throws -> [GKSavedGame]
  @available(macOS 10.10, *)
  func saveGameData(_ data: Data, withName name: String, completionHandler handler: ((GKSavedGame?, Error?) -> Void)? = nil)
  @available(macOS 10.10, *)
  func saveGameDataAsync(_ data: Data, withName name: String) async throws -> GKSavedGame
  @available(macOS 10.10, *)
  func deleteSavedGames(withName name: String, completionHandler handler: ((Error?) -> Void)? = nil)
  @available(macOS 10.10, *)
  func deleteSavedGamesAsync(withName name: String) async throws
  @available(macOS 10.10, *)
  func resolveConflictingSavedGames(_ conflictingSavedGames: [GKSavedGame], with data: Data, completionHandler handler: (([GKSavedGame]?, Error?) -> Void)? = nil)
  @available(macOS 10.10, *)
  func resolveConflictingSavedGamesAsync(_ conflictingSavedGames: [GKSavedGame], with data: Data) async throws -> [GKSavedGame]
}
