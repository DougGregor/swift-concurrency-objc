
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
