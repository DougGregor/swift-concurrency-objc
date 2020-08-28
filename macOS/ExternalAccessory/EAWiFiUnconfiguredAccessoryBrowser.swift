
enum EAWiFiUnconfiguredAccessoryBrowserState : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case wiFiUnavailable
  case stopped
  case searching
  case configuring
}
enum EAWiFiUnconfiguredAccessoryConfigurationStatus : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case success
  case userCancelledConfiguration
  case failed
}
protocol EAWiFiUnconfiguredAccessoryBrowserDelegate : NSObjectProtocol {
}
