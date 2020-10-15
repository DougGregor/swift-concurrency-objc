
extension GKMatch {
  enum SendDataMode : Int {
    init?(rawValue: Int)
    var rawValue: Int { get }
    case reliable
    case unreliable
  }
}
enum GKPlayerConnectionState : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case unknown
  case connected
  case disconnected
}
extension GKMatch {
  @available(watchOS, introduced: 2.0, deprecated: 2.0, message: "This is never invoked and its implementation does nothing, use chooseBestHostingPlayerWithCompletionHandler:")
  func chooseBestHostPlayer(completionHandler: @escaping (String?) -> Void)
  @available(watchOS, introduced: 2.0, deprecated: 2.0, message: "This is never invoked and its implementation does nothing, use sendData:toPlayers:dataMode:error:")
  func send(_ data: Data, toPlayers playerIDs: [String], with mode: GKMatch.SendDataMode) throws
  @available(watchOS, introduced: 2.0, deprecated: 2.0, message: "This is never invoked and its implementation does nothing, use players instead.")
  var playerIDs: [String]? { get }
}
