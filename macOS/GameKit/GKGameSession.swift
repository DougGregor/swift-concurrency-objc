
enum GKConnectionState : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case notConnected
  case connected
}
enum GKTransportType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case unreliable
  case reliable
}
@available(macOS, introduced: 10.12, deprecated: 10.14, message: "For real-time matches, use GKMatchmakerViewController. For turn-based matches, use GKTurnBasedMatchmakerViewController.")
class GKGameSession : NSObject {
  var identifier: String { get }
  var title: String { get }
  var owner: GKCloudPlayer { get }
  var players: [GKCloudPlayer] { get }
  var lastModifiedDate: Date { get }
  var lastModifiedPlayer: GKCloudPlayer { get }
  var maxNumberOfConnectedPlayers: Int { get }
  var badgedPlayers: [GKCloudPlayer] { get }
  class func createSession(inContainer containerName: String?, withTitle title: String, maxConnectedPlayers maxPlayers: Int, completionHandler: @escaping (GKGameSession?, Error?) -> Void)
  class func createSession(inContainer containerName: String?, withTitle title: String, maxConnectedPlayers maxPlayers: Int) async throws -> GKGameSession?
  class func loadSessions(inContainer containerName: String?, completionHandler: @escaping ([GKGameSession]?, Error?) -> Void)
  class func loadSessions(inContainer containerName: String?) async throws -> [GKGameSession]?
  class func load(withIdentifier identifier: String, completionHandler: @escaping (GKGameSession?, Error?) -> Void)
  class func load(withIdentifier identifier: String) async throws -> GKGameSession?
  class func remove(withIdentifier identifier: String, completionHandler: @escaping (Error?) -> Void)
  class func remove(withIdentifier identifier: String) async throws
  func getShareURL(completionHandler: @escaping (URL?, Error?) -> Void)
  func getShareURL() async throws -> URL?
  func loadData(completionHandler: @escaping (Data?, Error?) -> Void)
  func loadData() async throws -> Data?
  func save(_ data: Data, completionHandler: @escaping (Data?, Error?) -> Void)
  func save(_ data: Data) async throws -> Data?
  func setConnectionState(_ state: GKConnectionState, completionHandler: @escaping (Error?) -> Void)
  func setConnectionState(_ state: GKConnectionState) async throws
  func players(with state: GKConnectionState) -> [GKCloudPlayer]
  func send(_ data: Data, with transport: GKTransportType, completionHandler: @escaping (Error?) -> Void)
  func send(_ data: Data, with transport: GKTransportType) async throws
  func sendMessage(withLocalizedFormatKey key: String, arguments: [String], data: Data?, to players: [GKCloudPlayer], badgePlayers: Bool, completionHandler: @escaping (Error?) -> Void)
  func sendMessage(withLocalizedFormatKey key: String, arguments: [String], data: Data?, to players: [GKCloudPlayer], badgePlayers: Bool) async throws
  func clearBadge(for players: [GKCloudPlayer], completionHandler: @escaping (Error?) -> Void)
  func clearBadge(for players: [GKCloudPlayer]) async throws
}
