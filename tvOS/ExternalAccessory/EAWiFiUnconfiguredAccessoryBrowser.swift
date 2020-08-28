
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
@available(tvOS 8.0, *)
class EAWiFiUnconfiguredAccessoryBrowser : NSObject {
  weak var delegate: @sil_weak EAWiFiUnconfiguredAccessoryBrowserDelegate?
  var unconfiguredAccessories: Set<EAWiFiUnconfiguredAccessory> { get }
}
protocol EAWiFiUnconfiguredAccessoryBrowserDelegate : NSObjectProtocol {
}
